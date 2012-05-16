route = (path, viewClass) ->
  Ember.routes.add path, @, (params) ->
    view = viewClass.create(params)
    App.layout.set 'body', view

route 'home', App.Views.Home
route 'movies', App.Views.Movies
route 'movies/:id/edit', App.Views.EditMovie

