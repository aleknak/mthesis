window.Content = {
  initialize: ->
    window.content_router = new Content.Router()
    Backbone.history.start() if Backbone.history
}
