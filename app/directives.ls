### Directives ###

angular.module \app.directives [
  # require the 'app.service' module
  \app.services
]

.directive \appVersion (version) ->
  (scope, elm, attrs) !-> elm.text version
