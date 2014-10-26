describe "todo" ->

  beforeEach -> browser.get "/todo"

  specify "should list 2 items" ->
    expect element.all(by.repeater("todo in todos")).count! .to.eventually.equal 2

  specify "should display checked items with a line-through" ->
    expect element(by.css "[ui-view] ul li input:checked + span").getCssValue("text-decoration") .to.eventually.match /line-through/

  specify "should sync done status with checkbox state" ->
    element by.css "[ui-view] ul li input:not(:checked)" .click!
    expect "[ui-view] ul li span" .dom.to.have.htmlClass "donetrue"
    element.all by.css "[ui-view] ul li input:checked" .click!
    expect "[ui-view] ul li span" .dom.to.have.htmlClass "donefalse"

  specify "should remove checked items when the archive link is clicked" ->
    element by.css "[ui-view] a[ng-click=\"archive()\"]" .click!
    expect element.all(by.repeater("todo in todos")).count! .to.eventually.equal 1

  specify "should add a newly submitted item to the end of the list and empty the text input" ->
    newItemLabel = "test newly added item"
    input = element by.model "todoText"
    input.sendKeys newItemLabel
    element by.css '[ui-view] button[type="submit"]' .click!
    expect element.all(by.repeater("todo in todos")).count! .to.eventually.equal 3
    expect "[ui-view] ul li:last-child span" .dom.to.have.text newItemLabel
    expect input.getAttribute('value') .to.eventually.equal ""
