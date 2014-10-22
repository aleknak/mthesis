class Content.MainView extends Backbone.View
  tagName: 'ul'
  className: 'content-items js-content-items small-block-grid-2 medium-block-grid-3 large-block-grid-4'

  initialize: ->
    _.bindAll this, "render"

  render: ->
    container = $(@el)
    @collection.each (item) ->
      view = new Content.ItemView(model: item)
      container.append(view.render().el)
    this
