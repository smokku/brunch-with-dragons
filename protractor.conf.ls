exports.config =
  allScriptsTimeout: 11000

  specs: <[app/**/*.scenario.ls]>

  capabilities:
    browserName: \chrome

  baseUrl: \http://localhost:3333/

  framework: \mocha

  mochaOpts:
    reporter: 'spec'
    slow: 3000
    enableTimeouts: false

  on-prepare: ->
    chai = require 'chai'
    global.assert := chai.assert
    global.expect := chai.expect
    global.should := chai.should!
    chai.use require 'sinon-chai'
    chai.use require 'chai-as-promised'
    chai.use (require 'chai-webdriver')(browser.driver)
