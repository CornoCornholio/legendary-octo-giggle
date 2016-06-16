var gulp = require('gulp');
var paths = require('../paths');
var plugins = require('../plugins');
var templateData = require('../data/corporate-structure.json');

gulp.task('build-hb', function() {


  var options = {
        ignorePartials: true, //ignores the unknown footer2 partial in the handlebars template, defaults to false
        partials : {
            footer : '<footer>the end</footer>'
        },
        batch : [paths.root + '/partials'],
        helpers : {
            capitals : function(str){
                return str.toUpperCase();
            },
            randImageUrl : function(gender){
              var num = Math.floor(Math.random() * (100 - 1)) + 1;
              var gen = (gender === 'male' ? 'men': 'women')
              return "https://randomuser.me/api/portraits/"+ gen +"/" + num + ".jpg"
            }
        }
    };

    return gulp.src(paths.handlebars)
        .pipe(plugins.compileHandlebars(templateData, options))
        .pipe(plugins.rename('corporate-structure.html'))
        .pipe(gulp.dest(paths.root + 'pages/people'));

  // for(var i=0; i<speakers.length; i++) {
  //        var speaker = speakers[i],
  //            fileName = speaker.fullName.replace(/ +/g, '-').toLowerCase();
  //
  //        gulp.src(paths.handlebars)
  //            .pipe(plugins.compileHandlebars(speaker))
  //            .pipe(plugins.rename(fileName + ".html"))
  //            .pipe(gulp.dest(paths.output + 'pages/people'));
  //
  //    }
});
