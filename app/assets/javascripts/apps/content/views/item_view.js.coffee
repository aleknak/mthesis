class Content.ItemView extends Backbone.View
  tagName: 'li'
  className: 'text-center'
  template: JST['apps/content/templates/item']

  initialize: (options) ->
    @options = options || {}
    _.bindAll this, "render"

  render: ->
    self = @
    container = $(@el)
    container.attr("id", "item-#{@model.id}")
    container.html @template(model: @model)
    this
