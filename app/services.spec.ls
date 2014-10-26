# test specs for services go here

describe \services ->

  beforeEach module \app.services

  describe \version ->
    specify "should return current version" inject (version) ->
      expect version .to.equal '0.1'
