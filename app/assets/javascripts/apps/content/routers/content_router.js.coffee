class Content.Router extends Backbone.Router
  
  routes:
    "" : "index"
    "play/:id" : "show"
  
  initialize: ->
    console.log "- Content.Router initialize"

  index: ->
    console.log "- Content.Router index"
    container = $('#content-region')
    container.html ''
    
    videos = new Content.Videos()
    videos.fetch
      success: ->
        view = new Content.MainView(collection: videos)
        container.html(view.render().el)

    @sidebar_init()

  show: (id) ->
    console.log "shoud play #{id}"
    self = @
    
    # put in a cleanup method
    container = $('#content-region')
    container.html ''

    video = new Content.Video(id: id)
    video.fetch
      success: ->
        view = new Content.ItemDetailsView(model: video)
        container.html(view.render().el)
    
    @sidebar_init()

  sidebar_init: ->
    console.log "-- Content.Router sidebar initialize..."
    container = $('#sidebar-region')

    # Categories View
    view = new Content.SidebarCategoriesView()
    container.find('.js-categories').html view.render().el

    # Most Viewed View
    view = new Content.SidebarMostViewedView()
    container.find('.js-most-viewed').html view.render().el

    # Popular Tags View
    view = new Content.SidebarPopularTagsView()
    container.find('.js-popular-tags').html view.render().el
