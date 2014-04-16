Router = Ember.Router.extend() # ensure we don't share routes between all Router instances

Router.map ->
  this.route 'signup'

  this.route '404', { path: '*path' } # Catch all for all remaining routes

`export default Router`
