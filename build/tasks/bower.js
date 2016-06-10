var gulp = require('gulp');
var paths = require('../paths');
var mainBowerFiles = require('main-bower-files');

var plugins = require("gulp-load-plugins")({
  pattern: ['gulp-*', 'gulp.*'],
  replaceString: /\bgulp[\-.]/
});

gulp.task('bower', function() { 
    return plugins.bower()
         .pipe(gulp.dest(paths.bower)) 
});

gulp.task('pack', function() {
    return gulp.src(mainBowerFiles(/* options */), { base: paths.bower })
        .pipe(gulp.dest(paths.vendor)) 
});
