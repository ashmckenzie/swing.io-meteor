@rdioSearch = (query) ->
  Meteor.call "rdioSearch", query, (error, results) ->
    if error
      console.log error
      console.log error.reason
    else
      console.log results
      Session.set('search_results', results)

Deps.autorun ->
  # if query = Session.get('search_query')
  #   Session.set('search_results', rdioSearch(query))
