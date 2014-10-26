describe "view1" ->

  beforeEach -> browser.get "/view1"

  specify "should render view when user navigates to /view" ->
    expect "[ui-view] p:first-child" .dom.to.contain.text /partial for view 1/
