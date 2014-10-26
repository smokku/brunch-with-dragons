# Declare app level module which depends on filters, and services
App = angular.module \app <[
  ui.router ngCookies ngResource
  app.controllers app.directives app.filters app.services
  app.todo.controllers app.view1 app.view2
]>

App.config ($urlRouterProvider, $locationProvider) ->
  $urlRouterProvider.otherwise \/todo
  $locationProvider.html5Mode true
