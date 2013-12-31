Router.configure({
  layoutTemplate: 'layout',
  loadingTemplate: 'loading'
});

Router.map(function() {
  this.route('home', { path: '/' });
  this.route('searchResults', { path: '/search' });
});

SearchResultsController = RouteController.extend({
  before: function () {
    return Session.set('search_query', this.params.q);
  }
});
