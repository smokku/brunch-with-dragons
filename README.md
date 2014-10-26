# Brunch with Dragons

                               ,/     _,---._
                    ,       _,'/|  ,-'       `.
                     \.__,-' // `./   ____     \
                      \\    //   `. ,'\__/`.    \
                       \\  //      `.,'  `./`.   `.
                        ||//         `-.   `.'|    \
                        / ,`,===========:=- |-|     \
            __        ,' )\,_        ,-'    | |      `.__
          /))/)       \,/)/ \\\    /'      /`-|          `---.___
         ())'_)       / '   /,\\ ,/       |`-,'
         /)).\____,-_/  , ,'~  \\|        |--|          ,
        (()||_)~~~~|' ,','      )'        `._,\  `.     `.
         ((\\/      \/_/       (          / `.-\   \      )
           /\\                  `,       /    \-`-.,'   ,/
          / ')\                        ,'     /`-./   ,'---.____
         |     |                      /   ,--'   /   /---.______
         |  |  |            ,-.-. _,-'  ,-,-._  /  _/
         |_/|_,'           /\/ ) `  /|,/\/\_, `-  /\
          // ||_          //'|/\__,'\|(/'|/ \___,'`,)
          `-  ~~          `  `           `

**Here be dragons**

Brunch with Dragons is a [Brunch](http://brunch.io/) application skeleton bundled with cream of the crop technologies.

## Development Environment Features

- [LiveScript](http://livescript.net/) for all the code
- [Karma](http://karma-runner.github.io/0.12/index.html) unit test runner
- [Mocha](http://mochajs.org/) test framework
- [Chai](http://chaijs.com/) assertion library
- [Sinon](http://sinonjs.org/) test spies, stubs and mocks
- [Chai as Promised](https://github.com/domenic/chai-as-promised/) support for assertions about promises
- [Protractor](http://angular.github.io/protractor/) functional test runner (with Mocha, Chai and Sinon too)
- [Chai-webdriver](http://b3nj4m.github.io/chai-webdriver/) Protractor sugar for the Chai assertion library
- [Brunch Auto-Reload](https://github.com/brunch/auto-reload-brunch) browser
- [Brunch multiple assets folders](https://www.npmjs.org/package/assetsmanager-brunch)

## Application Features

- [Initializr](http://www.initializr.com/) boilerplate
- Browser [console polyfill](https://github.com/paulmillr/console-polyfill)
- [Bower](http://bower.io/) components
- [LESS](http://lesscss.org/) for all the CSS
- [Bootstrap](http://getbootstrap.com/) CSS framework (LESS flawor)
- [Bootswatch](http://bootswatch.com/) themes for Bootstrap
- [Jade](http://jade-lang.com/) for layouts
  with [https://github.com/GulinSS/jade-angularjs-brunch](https://github.com/GulinSS/jade-angularjs-brunch) compiler to AngularJS modules
- [AngularJS](https://angularjs.org/) Frontend Application framework
- Angular[UI Router](http://angular-ui.github.io/ui-router/) for nested routing
- Angular[UI Bootstrap](http://angular-ui.github.io/bootstrap/) directives
- [Angular Dialog Service](https://github.com/m-e-conroy/angular-dialog-service) application modals
  and dialogs for use with Angular-UI-Bootstrap
- [Font Awesome](https://github.com/FortAwesome/Font-Awesome)
  with [Angular FontAwesome](https://github.com/picardy/angular-fontawesome) directives
- Environment aware YAML configurations for Angular app
  with [constangular-brunch](https://github.com/tomtomgo/constangular-brunch)
- API mock for development without real API backend around


## Getting started

    $ brunch new git@github.com:smokku/brunch-with-dragons.git

or

    $ git clone git@github.com:smokku/brunch-with-dragons.git
    $ npm install
    $ git update-ref -d refs/heads/master  # optional


## Developer Workflow

In one terminal window run [Brunch](http://brunch.io/) build process:

    $ npm start

In second terminal window run [Karma](https://github.com/karma-runner) tests:

    $ npm test

Open browser-of-choice pointing to [http://localhost:3333/](http://localhost:3333/)
to see your application.

After every file edited and saved Brunch will rebuild \_public directory, which
triggers Karma tests run and brunch-auto-reload app in browser.

To run functional (e2e) tests run:

    $ npm run-script test:functional

To build _production_ release do:

    $ rm -r _public
    $ npm run-script build


## Guide

There is __a ton__ of functionality integrated and getting around may be confusing
at first. Here are some random notes to guide you.

There are examples of two kinds of Angular modules:
- 'todo' is one-directory per module with separate source files for services,
  controllers, etc.
- 'view' has multiple, but related modules in one directory, each in own
  LiveScript source file
- common services, layouts, etc. are located in app/ directory without
  any subdirectory.

Choose module layout depending on how large and complicated the module is.

Unit tests are in \*.spec.ls files together with components they test.

Functional (e2e) tests are in \*.scenario.ls files together with parts they test.

There are \*.mock.ls files, that will not be included in _production_ release.

See services.spec.ls for example how to use Mocha asynchronous tests.

See todo.scenario.ls for examples of chai assertions for promises
and chai-webdriver assertions and DOM selectors.

See api.mock.ls for API mock response example.


## Foot-Notes

- Based on [angular-brunch-seed](https://github.com/scotch/angular-brunch-seed)
- Dragon ASCII Art by Erik Andersson

