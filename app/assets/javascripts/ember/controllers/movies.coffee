App.Controllers.Movies = {}

App.Controllers.Movies.Index = Ember.Object.extend

  execute: (params) ->
    @set 'movies', App.Models.Movies.create()
    @get('movies').fetch()
    @render()

  render: ->
    view = App.Views.Movies.create
      controller: @
    App.layout.set 'body', view

