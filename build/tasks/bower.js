var gulp = require('gulp');
var paths = require('../paths');
var plugins = require('../plugins');
var mainBowerFiles = require('main-bower-files');

gulp.task('bower', function() { 
    return plugins.bower()
         .pipe(gulp.dest(paths.bower)) 
});

gulp.task('pack', function() {
    return gulp.src(mainBowerFiles(/* options */), { base: paths.bower })
        .pipe(gulp.dest(paths.output + '/js/vendors')) 
});
