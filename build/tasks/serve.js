var gulp = require('gulp');
var browserSync = require('browser-sync');

var plugins = require("gulp-load-plugins")({
  DEBUG: true,
  lazy: false,
  pattern: ['gulp-*', 'gulp.*'],
  replaceString: /\bgulp[\-.]/
});


// this task utilizes the browsersync plugin
// to create a dev server instance
// at http://localhost:9000
gulp.task('serve', ['build'], function(done) {
  browserSync({
    open: false,
    port: 9000,
    server: {
      baseDir: ['.'],
      middleware: function (req, res, next) {
        res.setHeader('Access-Control-Allow-Origin', '*');
        res.setHeader('ExpiresDefault', 'access');
        next();
      }
    }
  }, done);
});
