Template.playerPlayer.rendered = ->

  duration = 1

  $('#api').rdio 'GAlNi78J_____zlyYWs5ZG02N2pkaHlhcWsyOWJtYjkyN2xvY2FsaG9zdEbwl7EHvbylWSWFWYMZwfc='

  # $('#api').bind 'ready.rdio', ->

  $('#api').bind 'playingTrackChanged.rdio', (e, playingTrack, sourcePosition) ->
    if playingTrack
      duration = playingTrack.duration
      $('#art').attr 'src', playingTrack.icon
      $('#track').text playingTrack.name
      $('#album').text playingTrack.album
      $('#artist').text playingTrack.artist

  $('#api').bind 'positionChanged.rdio', (e, position) ->
    $('#position').css 'width', Math.floor(100 * position / duration) + '%'

  $('#api').bind 'playStateChanged.rdio', (e, playState) ->
    if playState is 0 # paused
      $('#play').show()
      $('#pause').hide()
    else
      $('#play').hide()
      $('#pause').show()

  # $('#previous').click ->
  #   $('#api').rdio().previous()

  $('#play').click ->
    $('#api').rdio().play()

  $('#pause').click ->
    $('#api').rdio().pause()

  # $('#next').click ->
  #   $('#api').rdio().next()
