const gulp = require('gulp');
const concat = require('gulp-concat');

// ****************************
// Move JS Files to src/js
// ****************************

gulp.task('js', function() {
  return gulp.src([
      'node_modules/jquery/dist/jquery.min.js',
      'node_modules/bootstrap/dist/js/bootstrap.min.js',
      'node_modules/popper.js/dist/umd/popper.min.js',
      'node_modules/owl.carousel2/dist/owl.carousel.min.js',
      'node_modules/magnific-popup/dist/jquery.magnific-popup.min.js',
      'node_modules/wowjs/dist/wow.min.js',
      'node_modules/imagesloaded/imagesloaded.pkgd.min.js',
      'node_modules/isotope-layout/dist/isotope.pkgd.min.js',
      'node_modules/jarallax/dist/jarallax.min.js',
      'node_modules/jarallax/dist/jarallax-video.min.js',
      'node_modules/jquery-waypoints/waypoints.min.js',
      'node_modules/jquery.easing/jquery.easing.min.js'
    ])
    .pipe(gulp.dest("src/js"))
});

// ******************************
// Combine All js files into one
// ******************************

gulp.task('scripts', function() {
  return gulp.src([
    './src/js/default-assets/avoid.console.error.js',
    './src/js/default-assets/classynav.js',
    'node_modules/owl.carousel2/dist/owl.carousel.min.js',
    'node_modules/wowjs/dist/wow.min.js',
    'node_modules/magnific-popup/dist/jquery.magnific-popup.min.js',
    'node_modules/jquery-waypoints/waypoints.min.js',
    'node_modules/imagesloaded/imagesloaded.pkgd.min.js',
    'node_modules/isotope-layout/dist/isotope.pkgd.min.js',
    'node_modules/jarallax/dist/jarallax.min.js',
    'node_modules/jarallax/dist/jarallax-video.min.js',
    './src/js/default-assets/jquery.scrollup.min.js',
    'node_modules/jquery.easing/jquery.easing.min.js',
    './src/js/default-assets/slick.min.js'
  ])
    .pipe(concat('mona.bundle.js'))
    .pipe(gulp.dest('./src/js/'))
});

// *************************************
// Move Font Awesome Fonts to src/fonts
// *************************************

gulp.task('fafonts', function() {
  return gulp.src([
      'node_modules/font-awesome/fonts/*'
    ])
    .pipe(gulp.dest('src/fonts'))
})

// *************************************
// Move Elegent Icons to src/fonts
// *************************************
gulp.task('elefonts', function() {
  return gulp.src([
      'node_modules/elegant-icons/fonts/*'
    ])
    .pipe(gulp.dest('src/css/fonts'))
})

// *******************************
// Move CSS to src/css
// *******************************

gulp.task('css', function() {
  return gulp.src([
      'node_modules/bootstrap/dist/css/bootstrap.min.css',
      'node_modules/font-awesome/css/font-awesome.min.css',
      'node_modules/owl.carousel2/dist/assets/owl.carousel.min.css',
      'node_modules/elegant-icons/style.css',
      'node_modules/wowjs/css/libs/animate.css',
      'node_modules/magnific-popup/dist/magnific-popup.css'
    ])
    .pipe(gulp.dest('src/css'))
})

gulp.task('default', ['js', 'scripts', 'css', 'fafonts', 'elefonts']);



"use strict";

// Load plugins
const browsersync = require("browser-sync").create();
const del = require("del");
const gulp = require("gulp");
const merge = require("merge-stream");

// BrowserSync
function browserSync(done) {
  browsersync.init({
    server: {
      baseDir: "./"
    },
    port: 3000
  });
  done();
}

// BrowserSync reload
function browserSyncReload(done) {
  browsersync.reload();
  done();
}

// Clean vendor
function clean() {
  return del(["./vendor/"]);
}

// Bring third party dependencies from node_modules into vendor directory
function modules() {
  // Bootstrap
  var bootstrap = gulp.src('./node_modules/bootstrap/dist/**/*')
    .pipe(gulp.dest('./vendor/bootstrap'));
  // jQuery
  var jquery = gulp.src([
      './node_modules/jquery/dist/*',
      '!./node_modules/jquery/dist/core.js'
    ])
    .pipe(gulp.dest('./vendor/jquery'));
  return merge(bootstrap, jquery);
}

// Watch files
function watchFiles() {
  gulp.watch("./**/*.css", browserSyncReload);
  gulp.watch("./**/*.html", browserSyncReload);
}

// Define complex tasks
const vendor = gulp.series(clean, modules);
const build = gulp.series(vendor);
const watch = gulp.series(build, gulp.parallel(watchFiles, browserSync));

// Export tasks
exports.clean = clean;
exports.vendor = vendor;
exports.build = build;
exports.watch = watch;
exports.default = build;

