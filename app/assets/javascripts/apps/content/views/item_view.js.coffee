class Content.ItemView extends Backbone.View
  className: "large-3 small-6 columns left"
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
