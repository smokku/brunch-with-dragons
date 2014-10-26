angular.module \app.view1 <[ui.router app.templates]>

.config ($stateProvider) !->
  $stateProvider.state \view1,
    url: \/view1
    templateUrl: \app/view/partial1.jade
    controller: \MyCtrl1

.controller \MyCtrl1 ($scope) ->
  $scope.twoMinusOne = 1
