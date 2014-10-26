# test specs for services go here

describe \todo.services ->

  beforeEach module \app.todo.services

  describe \todo-api ->

    $httpBackend = null
    response = <[foo bar]>

    beforeEach module \config.api

    beforeEach inject ($injector, api-config) ->
      $httpBackend := $injector.get \$httpBackend
      $httpBackend.expect \GET "#{api-config.base_url}api/todo" .respond 200 response

    specify "should return TODO items from API" (done) ->
      inject (todo-api) ->
        todo-api.get do
          * (todos) ->
              expect todos .to.have.length response.length .and.have.members response
              done!
          * done
        $httpBackend.flush!
