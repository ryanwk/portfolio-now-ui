var gulp = require("gulp");
var path = require("path");
var sass = require("gulp-sass");
var autoprefixer = require("gulp-autoprefixer");
var sourcemaps = require("gulp-sourcemaps");
var open = require("gulp-open");
var browserSync = require("browser-sync").create();

var Paths = {
  HERE: "./",
  DIST: "dist/",
  CSS: "./assets/css/",
  SCSS_TOOLKIT_SOURCES: "./assets/scss/now-ui-kit.scss",
  SCSS: "./assets/scss/**/**",
};
// gulp.task(
//   "compile-scss",
//   gulp.series(function () {
//     return gulp
//       .src(Paths.SCSS_TOOLKIT_SOURCES)
//       .pipe(sourcemaps.init())
//       .pipe(sass().on("error", sass.logError))
//       .pipe(autoprefixer())
//       .pipe(sourcemaps.write(Paths.HERE))
//       .pipe(gulp.dest(Paths.CSS));
//   })
// );

gulp.task(
  "watch",
  gulp.series(function () {
    // gulp.watch(Paths.SCSS, ["compile-scss"]);
    browserSync.watch("*.html", browserSync.reload);
    browserSync.watch("assets/css/*", browserSync.reload);
  })
);

gulp.task(
  "open",
  gulp.series(function () {
    gulp.src("index.html").pipe(open());
  })
);

// Configure the browserSync task
gulp.task(
  "browserSync",
  gulp.series(function () {
    var pathArray = Object.keys(Paths).map(function (path) {
      return Paths[path];
    });

    browserSync.init(["*"], {
      server: {
        baseDir: "./index.html",
      },
    });
  })
);

gulp.task("dev", gulp.series(["open", "watch", "browserSync"]));
