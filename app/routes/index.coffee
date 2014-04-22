route = Ember.Route.extend
  actions:
    signup: ->
      @transitionTo 'signup'

    verifyAccount: ->
      accountEmail = @get 'controller.application.email'
      accountPassword = @get 'controller.application.password'

      loginEmail = @get 'controller.email'
      loginPassword = @get 'controller.password'

      if accountEmail is loginEmail and accountPassword is loginPassword
        alert "Demo complete! Look in the docs for more examples."

`export default route`
