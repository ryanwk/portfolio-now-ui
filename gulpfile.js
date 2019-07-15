var gulp = require('gulp');
var path = require('path');
var sass = require('gulp-sass');
var autoprefixer = require('gulp-autoprefixer');
var sourcemaps = require('gulp-sourcemaps');
var open = require('gulp-open');
var browserSync = require('browser-sync').create();

var Paths = {
  HERE: './',
  DIST: 'dist/',
  CSS: './assets/css/',
  SCSS_TOOLKIT_SOURCES: './assets/scss/now-ui-kit.scss',
  SCSS: './assets/scss/**/**'
};

// Copy third party libraries from /node_modules into / vendor
// gulp.task('vendor', function () {

//   // Bootstrap
//   gulp.src([
//     './node_modules/bootstrap/dist/**/*',
//     '!./node_modules/bootstrap/dist/css/bootstrap-grid*',
//     '!./node_modules/bootstrap/dist/css/bootstrap-reboot*'
//   ])
//     .pipe(gulp.dest('./vendor/bootstrap'))

//   // Font Awesome
//   gulp.src([
//     './node_modules/font-awesome/**/*',
//     '!./node_modules/font-awesome/{less,less/*}',
//     '!./node_modules/font-awesome/{scss,scss/*}',
//     '!./node_modules/font-awesome/.*',
//     '!./node_modules/font-awesome/*.{txt,json,md}'
//   ])
//     .pipe(gulp.dest('./vendor/font-awesome'))

//   // jQuery
//   gulp.src([
//     './node_modules/jquery/dist/*',
//     '!./node_modules/jquery/dist/core.js'
//   ])
//     .pipe(gulp.dest('./vendor/jquery'))

//   // jQuery Easing
//   gulp.src([
//     './node_modules/jquery.easing/*.js'
//   ])
//     .pipe(gulp.dest('./vendor/jquery-easing'))

//   // Simple Line Icons
//   gulp.src([
//     './node_modules/simple-line-icons/fonts/**',
//   ])
//     .pipe(gulp.dest('./vendor/simple-line-icons/fonts'))

//   gulp.src([
//     './node_modules/simple-line-icons/css/**',
//   ])
//     .pipe(gulp.dest('./vendor/simple-line-icons/css'))

// });

gulp.task('compile-scss', function () {
  return gulp.src(Paths.SCSS_TOOLKIT_SOURCES)
    .pipe(sourcemaps.init())
    .pipe(sass().on('error', sass.logError))
    .pipe(autoprefixer())
    .pipe(sourcemaps.write(Paths.HERE))
    .pipe(gulp.dest(Paths.CSS));
});

gulp.task('watch', function () {
  gulp.watch(Paths.SCSS, ['compile-scss']);
});

gulp.task('open', function () {
  gulp.src('index.html')
    .pipe(open());
});

// Configure the browserSync task
gulp.task('browserSync', function () {
  var pathArray = Object.keys(Paths).map(function (path) {
    return Paths[path];
  });

  browserSync.init(pathArray, {
    server: {
      baseDir: './'
    }
  });
});

gulp.task('dev', ['open', 'watch', 'browserSync']);