/* https://github.com/angular/protractor/blob/master/docs/getting-started.md */

describe "app" ->

  beforeEach -> browser.get "/"

  specify "should automatically redirect to /todo when location hash/fragment is empty" ->
    expect browser.getLocationAbsUrl! .to.eventually.equal "/todo"

  specify "should navigate to /view1 when the View link in nav is clicked" ->
    element by.css '.nav a[ui-sref="view1"]' .click!
    expect browser.getLocationAbsUrl! .to.eventually.equal "/view1"
