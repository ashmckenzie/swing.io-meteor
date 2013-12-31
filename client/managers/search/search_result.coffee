Template.searchResult.events
  "click a.play-track": (e) ->
    e.preventDefault()
    console.log e
    trackKey = $(e.target).data('track-key')
    $("#api").rdio().play(trackKey)

  "click a.add-track": (e) ->
    e.preventDefault()

    track =
      artist:
        name: $(e.target).find("[name=name]").val()
      album:
        name: $(e.target).find(".album-name]").val()

    Meteor.call 'newTrack', track, (error, id) ->
      if (!error)
        debugger
