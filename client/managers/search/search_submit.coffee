Template.searchSubmit.helpers
  searchQuery: ->
    Session.get('search_query')

Template.searchSubmit.events "submit form": (e) ->
  e.preventDefault()
  query = $(e.target).find("[name=q]").val()
  Router.go('/search?q=' + query);
