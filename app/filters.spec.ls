# test specs for filters go here
describe \filter ->

  beforeEach module \app.filters

  describe \interpolate ->

    beforeEach module ($provide) !->
      $provide.value \version "TEST_VER"

    specify "should replace VERSION" inject (interpolateFilter) ->
      expect interpolateFilter "before %VERSION% after" .to.equal "before TEST_VER after"
