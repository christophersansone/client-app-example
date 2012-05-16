App.Controller = Ember.Object.extend
  viewClassPath: null

  execute: (params) ->
    @render()

  render: ->
    viewClass = Ember.getPath @get('viewClassPath')
    view = viewClass.create
      controller: @
    App.layout.set 'body', view

