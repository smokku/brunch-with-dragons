# Karma configuration

module.exports = (config) !-> config.set do

    # base path that will be used to resolve all patterns (eg. files, exclude)
    basePath: ''


    # frameworks to use
    # available frameworks: https://npmjs.org/browse/keyword/karma-adapter
    frameworks: <[mocha sinon-chai]>


    # list of files / patterns to load in the browser
    files: <[
      _public/js/vendor.js
      _public/js/app.js
      node_modules/chai-as-promised/lib/chai-as-promised.js
      app/**/*.spec.ls
    ]>


    # list of files to exclude
    exclude: <[
    ]>


    # preprocess matching files before serving them to the browser
    # available preprocessors: https://npmjs.org/browse/keyword/karma-preprocessor
    preprocessors:
      '**/*.ls': ['live']


    # test results reporter to use
    # possible values: 'dots', 'progress'
    # available reporters: https://npmjs.org/browse/keyword/karma-reporter
    reporters: <[progress]>


    # web server port
    port: 9876


    # enable / disable colors in the output (reporters and logs)
    colors: yes


    # level of logging
    # possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO


    # Plugins to load
    plugins: <[
      karma-mocha
      karma-sinon-chai
      karma-live-preprocessor
      karma-firefox-launcher
      karma-chrome-launcher
      karma-phantomjs-launcher
    ]>


    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: yes


    # start these browsers
    # available browser launchers: https://npmjs.org/browse/keyword/karma-launcher
    browsers: <[Chrome Firefox PhantomJS]>


    # Continuous Integration mode
    # if true, Karma captures browsers, runs the tests and exits
    singleRun: no
