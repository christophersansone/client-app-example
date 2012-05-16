App.Controllers.Movies = {}

App.Controllers.Movies.Index = App.Controller.extend
  viewClassPath: 'App.Views.Movies'

  execute: (params) ->
    @set 'movies', App.Models.Movies.create()
    @get('movies').fetch()
    @render()

