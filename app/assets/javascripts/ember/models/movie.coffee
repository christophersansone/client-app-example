App.Models.Movie = Ember.Resource.define
  url: '/movies'
  schema:
    id: Number
    title: String,
    description: String,
    year: String,
    mpaa_rating: String

App.Models.Movies = Ember.ResourceCollection.extend
  type: App.Models.Movie

