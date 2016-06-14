var path = require('path');

var appRoot = 'app/';
var outputRoot = 'dist/';

module.exports = {
  root: appRoot,
  source: appRoot + '**/*.js',
  html: appRoot + '**/*.html',
  css: appRoot + '**/*.css',
  js: appRoot + '**/*.js',
  md: appRoot + '**/*.md',
  images: appRoot + '**/*.png',
  style: 'css/**/*.css',
  output: outputRoot,
  outputAssets: outputRoot + '/siteassets',
  doc:'./doc',
  bower: './bower_components' 
};
