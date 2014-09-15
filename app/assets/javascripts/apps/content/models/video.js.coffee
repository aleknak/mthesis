class Content.Video extends Backbone.Model
  urlRoot: ->
    "/api/videos"

  initialize: (options) ->
    @options = options
