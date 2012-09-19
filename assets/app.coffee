@App =
  init: ->
    App.koala  = (-> i = new Image(); i.src = '/images/koala.png'; i)()
    App.source = new App.SSE()
    App.router = new App.Router()
    Backbone.history.start pushState: true
  keys:
    enter: 13

Backbone.Model.prototype.idAttribute = "_id"

document.addEventListener "DOMContentLoaded", App.init
