angular.module \app.todo.controllers <[ui.router app.templates app.todo.services]>
.config ($stateProvider) !->
  $stateProvider.state \todo,
    url: \/todo
    templateUrl: \app/todo/partial.jade

.controller \TodoCtrl ($scope, todo-api) !->

  todo-api.get ($scope.todos)!->, !-> $scope.todos = []

  $scope.addTodo = ->
    $scope.todos.push do
      text: $scope.todoText
      done: false

    $scope.todoText = ""

  $scope.remaining = ->
    count = 0
    angular.forEach $scope.todos, (todo) ->
      count += (if todo.done then 0 else 1)

    count

  $scope.archive = ->
    oldTodos = $scope.todos
    $scope.todos = []
    angular.forEach oldTodos, (todo) ->
      $scope.todos.push todo unless todo.done
