# @Track = new Meteor.Collection('tracks')

Track = (doc) ->
  _.extend this, doc

Track:: =
  constructor: Track

  play: ->
    R.player.play(source: @.key)

@TrackCollection = new Meteor.Collection("tracks",
  transform: (doc) ->
    new Track(doc)
)

Meteor.methods
  addTrack: (attrs) ->

    track = _.extend(_.pick(attrs, 'artist', 'album'),
      key: attrs.track.key,
      name: attrs.track.name,
      playCount: 0,
      score: 0,
      createdAt: new Date().getTime()
    )

    track._id = TrackCollection.insert(track)
