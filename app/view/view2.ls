angular.module \app.view2 <[ui.router app.filters app.templates]>

.config ($stateProvider) !->
  $stateProvider.state \view2,
    url: \/view2
    templateUrl: \app/view/partial2.jade
