class Content.SidebarCategoriesView extends Backbone.View
  className: 'panel'
  template: JST['apps/content/templates/sidebar_categories']

  initialize: ->
    _.bindAll this, "render"

  render: ->
    self = @
    container = $(@el)
    container.html @template
    this
