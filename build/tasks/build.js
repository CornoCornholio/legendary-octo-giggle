var gulp = require('gulp');
var paths = require('../paths');
var runSequence = require('run-sequence');

var plugins = require("gulp-load-plugins")({
  DEBUG: true,
  lazy: false,
  pattern: ['gulp-*', 'gulp.*'],
  replaceString: /\bgulp[\-.]/
});

// copies changed html files to the output directory
gulp.task('build-html', function () {
  return gulp.src(paths.html)
    //.pipe(changed(paths.output, {extension: '.html'}))
    .pipe(gulp.dest(paths.output));
});

// copies changed css files to the output directory
gulp.task('build-css', function () {
  return gulp.src(paths.css)
    //.pipe(changed(paths.output, {extension: '.css'}))
    .pipe(gulp.dest(paths.output));
});

gulp.task('build-js', function () {
  return gulp.src(paths.js)
    //.pipe(changed(paths.output, {extension: '.css'}))
    .pipe(gulp.dest(paths.output));
});

// copies changed css files to the output directory
gulp.task('build-images', function () {
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
    'pack',
    ['build-html', 'build-js', 'build-css', 'build-images'],
    callback
  );
});
