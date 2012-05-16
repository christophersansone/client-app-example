Ember.routes.add 'home', @, (params) ->
  view = App.Views.Home.create(params)
  App.layout.set 'body', view

Ember.routes.add 'movies', @, (params) ->
  console.log params
  alert('movies')

Ember.routes.add 'movies/:id/edit', @, (params) ->
  console.log params
  alert('edit movie')

