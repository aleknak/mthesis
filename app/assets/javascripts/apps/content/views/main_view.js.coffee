class Content.MainView extends Backbone.View
  className: 'content-items js-content-items'

  initialize: ->
    _.bindAll this, "render"

  render: ->
    container = $(@el)
    @collection.each (item) ->
      view = new Content.ItemView(model: item)
      container.append(view.render().el)
    this
