Ember.routes.add 'home', @, ->
  alert 'home'

Ember.routes.add 'movies', @, (params) ->
  console.log params
  alert('movies')

Ember.routes.add 'movies/:id/edit', @, (params) ->
  console.log params
  alert('edit movie')

