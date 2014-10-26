# test specs for controllers go here

describe \view ->

  describe \MyCtrl1 ->

    angular.module \app.templates [] # stub templates used by auth.view1

    beforeEach module \app.view1

    specify "should make scope testable" inject ($rootScope, $controller) ->
      scope = $rootScope.$new()
      ctrl = $controller \MyCtrl1 ,
        $scope: scope

      expect scope.twoMinusOne .to.equal 1
