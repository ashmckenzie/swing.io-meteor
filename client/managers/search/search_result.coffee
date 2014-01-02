Template.searchResult.events
  "click a.play-track": (e) ->
    e.preventDefault()
    console.log e
    trackKey = $(e.target).data('track-key')
    $("#api").rdio().play(trackKey)

  "click a.add-track": (e) ->
    e.preventDefault()

    Meteor.call 'addTrack', @, (error, id) ->
      if (!error)
        console.log(id)
