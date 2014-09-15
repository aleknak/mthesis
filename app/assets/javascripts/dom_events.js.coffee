# organize javascript code by page
pageDomLoadInit = ->
  id = $("body").attr("id")
  window[id]["run"]() if typeof (window[id]) isnt "undefined" and typeof (window[id]["run"]) is "function" if id

window.welcome_index =
  run: ->
    Content.initialize()
    # Settings.initialize()

$ ->
  pageDomLoadInit()
