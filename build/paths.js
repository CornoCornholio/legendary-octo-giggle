var path = require('path');

var appRoot = 'app/';
var outputRoot = 'dist/';

module.exports = {
  root: appRoot,
  source: appRoot + '**/*.js',
  html: appRoot + '**/*.html',
  css: appRoot + '**/*.css',
  js: appRoot + '**/*.js',
  images: appRoot + '**/*.png',
  style: 'css/**/*.css',
  output: outputRoot,
  doc:'./doc',
  bower: './bower_components' ,
  vendor: outputRoot + 'vendor'
};
