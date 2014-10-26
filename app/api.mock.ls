# will use mock-app in place of real app
angular.module \mock-app <[app mock-api]>
angular.element document.getElementsByTagName \html .attr \ng-app \mock-app

# now, let's mock API service
angular.module \mock-api <[ngMockE2E config.api]>

.run ($httpBackend, api-config, mock-todos) ->
  $httpBackend.whenGET api-config.base_url + 'api/todo' .respond mock-todos

.constant \mockTodos [
  * text: "learn angular"
    done: true
  * text: "build an angular app"
    done: false
  ]
