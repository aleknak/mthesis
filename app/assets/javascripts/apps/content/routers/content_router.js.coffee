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
    console.log "- Content.Router show #{id}"
    # put in a cleanup method
    content = $('#content-region')
    sidebar = $('#sidebar-region')
    content.html ''
    sidebar.html ''

    video = new Content.Video(id: id)
    video.fetch
      success: ->
        view = new Content.ItemDetailsView(model: video)
        sidebar.append view.render().el

        view = new Content.VideoView(model: video)
        content.html view.render().el


  sidebar_init: ->
    console.log "-- Content.Router sidebar initialize..."
    sidebar = $('#sidebar-region')
    sidebar.html ''

    # Categories View
    view = new Content.SidebarCategoriesView()
    sidebar.append view.render().el

    # Most Viewed View
    view = new Content.SidebarMostViewedView()
    sidebar.append view.render().el

    # Popular Tags View
    view = new Content.SidebarPopularTagsView()
    sidebar.append view.render().el
