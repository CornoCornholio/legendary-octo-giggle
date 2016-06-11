var gulp = require('gulp');
var paths = require('../paths');
var plugins = require('../plugins');
var runSequence = require('run-sequence');
var es = require('event-stream');
var mainBowerFiles = require('main-bower-files');

// copies changed html files to the output directory
gulp.task('build-html', function() {

  // It's not necessary to read the files (will speed up things), we're only after their paths:
  // Concatenate vendor scripts
  var vendorJsStream = gulp.src(mainBowerFiles( /* options */ ), {
          read: false,
          base: paths.bower
      })
      //  .pipe(plugins.concat('vendors.js'))
      .pipe(gulp.dest(paths.output + '/js/vendors')) ;

  // Concatenate AND minify app sources
  var appJsStream = gulp.src(['./app/js/*.js'])
      .pipe(plugins.concat('app.js'))
      .pipe(plugins.uglify())
      .pipe(gulp.dest(paths.output + '/js'));

  var appCssStream = gulp.src(['./app/css/*.css'])
      .pipe(plugins.sourcemaps.init())
      .pipe(plugins.cleanCss({
          debug: true,
          compatibility: 'ie8'
      }, function(details) {
          console.log(details.name + ': ' + details.stats.originalSize);
          console.log(details.name + ': ' + details.stats.minifiedSize);
      }))
      .pipe(plugins.sourcemaps.write())
      .pipe(gulp.dest(paths.output + '/css'));

    return gulp.src(paths.html)
    .pipe(plugins.inject(vendorJsStream, {
        name: 'bower'
    }))
    .pipe(plugins.inject(es.merge(appJsStream, appCssStream)))
        //.pipe(changed(paths.output, {extension: '.html'}))
        .pipe(gulp.dest(paths.output));
});

// copies changed css files to the output directory
gulp.task('build-css', function() {
    return gulp.src(paths.css)
        //.pipe(changed(paths.output, {extension: '.css'}))
        .pipe(gulp.dest(paths.output));
});

gulp.task('build-js', function() {
    return gulp.src(paths.js)
        //.pipe(changed(paths.output, {extension: '.css'}))
        .pipe(gulp.dest(paths.output));
});

// copies changed css files to the output directory
gulp.task('build-images', function() {
    return gulp.src(paths.images)
        //.pipe(changed(paths.output, {extension: '.css'}))
        .pipe(gulp.dest(paths.output));
});

// this task calls the clean task (located
// in ./clean.js), then runs the build-system
// and build-html tasks in parallel
// https://www.npmjs.com/package/gulp-run-sequence
gulp.task('build', function(callback) {
    return runSequence(
        'clean',
        'pack', ['build-css', 'build-js', 'build-images', 'build-html'],
        callback
    );
});
