# Template.playlist.rendered = ->
#   R.ready ->
#     TrackCollection.find().fetch()[0].play()

Template.playlist.helpers
  tracks: ->
    TrackCollection.find()
