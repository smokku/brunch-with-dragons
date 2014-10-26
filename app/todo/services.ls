angular.module \app.todo.services <[ngResource config.api]>

.service \todoApi ($resource, api-config) ->
  $resource "#{api-config.base_url}api/todo" {} do
    get:
      method: \GET
      is-array: yes
