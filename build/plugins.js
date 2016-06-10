module.exports = require("gulp-load-plugins")({
  DEBUG: true,
  lazy: false,
  pattern: ['gulp-*', 'gulp.*'],
  replaceString: /\bgulp[\-.]/
});
