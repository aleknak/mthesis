class Content.SidebarMostViewedView extends Backbone.View
  className: 'panel callout radius'
  template: JST['apps/content/templates/sidebar_most_viewed']

  initialize: ->
    _.bindAll this, "render"

  render: ->
    self = @
    container = $(@el)
    container.html @template
    this
