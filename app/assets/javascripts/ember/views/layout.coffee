App.Layout = Ember.View.extend
  templateName: 'ember/templates/layout'

  _body: null

  body: ((key, value) ->
    if arguments.length == 2
      previousBody = @get '_body'
      previousBody.destroy() if previousBody
      @set '_body', value
      @appendBody()

    @get '_body'
  ).property()

  # appends the body only if the layout is already in the DOM
  appendBody: ->
    return unless @get('state') is 'inDOM'
    body = @get 'body'
    return unless body
    body.appendTo @.$()

  # occurs immediately after the view is inserted into the DOM
  didInsertElement: ->
    @appendBody()



# Create an instance of the layout immediately
App.layout = App.Layout.create();

# Append the layout to the DOM on document.ready
$ -> App.layout.append()

