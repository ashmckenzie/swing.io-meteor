Meteor.methods rdioSearch: (query) ->
  @unblock()
  # Future = Npm.require('fibers/future')
  # fut = new Future()

  try
    # fut['return'](HTTP.call('GET', 'http://localhost:4567/search', { params: { q: query } }).data)
    HTTP.call('GET', 'http://localhost:4567/search', { params: { q: query } }).data
  catch e
    console.log('An error occurred: ' + e)
    false

  # fut.wait()
