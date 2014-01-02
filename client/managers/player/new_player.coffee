Template.newPlayer.rendered = ->
  R.ready ->
    console.log 'rdio player ready..'

    $('#pause').click ->
      R.player.togglePause()

    R.player.on 'change:playingTrack', (track) ->
      $('#track').html(track.get('name'))
      $('#album').html(track.get('album'))
      $('#artist').html(track.get('artist'))

      $('#art').attr('src', track.get('icon'))

    R.player.on 'change:position', (position) ->
      duration = R.player.playingTrack().get('duration')
      $('#position').css 'width', Math.floor(100 * position / duration) + '%'
