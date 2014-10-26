exports.config =
  # See docs at http://brunch.readthedocs.org/en/latest/config.html.
  conventions:
    ignored: [ /\/_/, /\.(spec|scenario)\.ls$/ ]
  modules:
    definition: false
    wrapper: false
  paths:
    public: '_public'
    jadeCompileTrigger: '.compile-jade'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^(bower_components|vendor)/

    stylesheets:
      joinTo:
        'css/app.css': /^(app|bower_components|vendor)/
      order:
        before: [
          'app/styles/app.less'
        ]

    templates:
      joinTo:
        '.compile-jade': /^app/  # Hack for auto-compiling Jade templates.

  plugins:
    jade:
      pretty: yes # Adds pretty-indentation whitespaces to output (false by default)
    jade_angular:
      locals: {}
    assetsmanager:
      copyTo:
        'fonts': ['bower_components/font-awesome/fonts/*', 'bower_components/bootstrap/fonts/*']

  # uncomment if 'watch' stops noticing saved files
  #watcher:
  #  usePolling: true

  notifications: no

  keyword:
    filePattern: /\.(js|css|html|txt)$/

  overrides:
    production:
      minify: true
      optimize: true
      sourceMaps: false
      plugins:
        autoReload: enabled: false
        jade: pretty: no
      conventions: ignored: [ /\/angular-mocks\.js$/, /\.mock\.ls$/ ]
    staging:
      conventions: ignored: [ /\/angular-mocks\.js$/, /\.mock\.ls$/ ]
