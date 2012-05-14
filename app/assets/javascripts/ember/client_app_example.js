#= require_self
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./templates

App = Ember.Application.create();

$(function() {
    App.body = App.Body.create();
    App.body.append();
  }
);

