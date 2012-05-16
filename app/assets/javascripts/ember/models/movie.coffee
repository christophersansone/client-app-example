App.Models.Movie = Ember.Resource.define
  url: '/movies'
  schema:
    id: Number
    title: String,
    description: String,
    year: Number,
    mpaa_rating: String

App.Models.Movie.reopen
  editPath: (->
    "#movies/#{@get 'id'}/edit"
  ).property('id').cacheable()

App.Models.Movies = Ember.ResourceCollection.extend
  type: App.Models.Movie

