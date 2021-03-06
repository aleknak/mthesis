class Content.ItemDetailsView extends Backbone.View
  className: 'js-item-details show-for-medium-up'
  template: JST['apps/content/templates/item_details']

  initialize: (options) ->
    @options = options || {}
    _.bindAll this, "render"

  render: ->
    self = @
    container = $(@el)
    container.html @template(model: @model)
    this
