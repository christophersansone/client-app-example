App.Layout = Ember.View.extend
  templateName: 'ember/templates/layout'

  _body: null

  body: ((key, value) ->
    if arguments.length == 2
      previousBody = @get '_body'
      previousBody.destroy() if previousBody
      @set '_body', value
      value.appendTo @.$()

    @get '_body'
  ).property()

