class Content.SidebarPopularTagsView extends Backbone.View
  className: 'panel callout radius js-popular-tags show-for-medium-up'
  template: JST['apps/content/templates/sidebar_popular_tags']

  initialize: ->
    _.bindAll this, "render"

  render: ->
    self = @
    container = $(@el)
    container.html @template
    this
