class Content.VideoView extends Backbone.View
  template: JST['apps/content/templates/video']

  initialize: (options) ->
    @options = options || {}
    _.bindAll this, "render"

  render: ->
    self = @
    container = $(@el)
    container.html @template(model: @model)
    this
