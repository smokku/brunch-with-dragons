### Filters ###

angular.module \app.filters <[app.services]>
.filter \interpolate (version) ->
  (text) -> String(text)replace /\%VERSION\%/mg version
