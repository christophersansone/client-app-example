App.Controllers.Movies = {}

App.Controllers.Movies.Index = App.Controller.extend
  viewClassPath: 'App.Views.Movies'

  movies: null
  sortField: 'title'

  execute: (params) ->
    @set 'movies', App.Models.Movies.create()
    @get('movies').fetch()
    @render()

  sortedMovies: (->
    sortField = @get 'sortField'
    result = @get('movies').toArray().sort (a, b) ->
      aVal = a.get(sortField)
      bVal = b.get(sortField)
      return -1 if aVal < bVal
      return 1 if aVal > bVal
      return 0

  ).property('movies.@each', 'sortField').cacheable()

  sortByTitle: ->
    @set 'sortField', 'title'

  sortByRating: ->
    @set 'sortField', 'mpaa_rating'

  sortByYear: ->
    @set 'sortField', 'year'




App.Controllers.Movies.Edit = App.Controller.extend
  viewClassPath: 'App.Views.EditMovie'

  execute: (params) ->
    @set 'content', App.Models.Movie.create( id: params.id )
    @get('content').fetch()
    @render()

  submit: ->
    @get('content').save().done(@navigateToMovies)

  cancel: ->
    @navigateToMovies()

  navigateToMovies: ->
    Ember.routes.set 'location', '#movies'

