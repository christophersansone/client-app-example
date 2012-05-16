route = (path, controllerClassPath) ->
  Ember.routes.add path, @, (params) ->
    controllerClass = Ember.getPath(controllerClassPath)
    controller = controllerClass.create()
    controller.execute(params)

route 'home', 'App.Controllers.Home'
route 'movies', 'App.Controllers.Movies.Index'
route 'movies/:id/edit', 'App.Controllers.Movies.Edit'

