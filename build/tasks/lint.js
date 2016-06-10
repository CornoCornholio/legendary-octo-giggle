var gulp = require('gulp');
var paths = require('../paths');
var plugins = require("gulp-load-plugins")({
  pattern: ['gulp-*', 'gulp.*'],
  replaceString: /\bgulp[\-.]/
});
var stylish = require('jshint-stylish');

// runs jshint on all .js files
gulp.task('lint', function() {
  return gulp.src(paths.source)
    .pipe(plugins.jshint())
    .pipe(plugins.jshint.reporter(stylish));
});
