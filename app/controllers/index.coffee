controller = Ember.ObjectController.extend
  needs: "application"
  application: Ember.computed.alias("controllers.application")

  emailAddress: null

  isInvalidEmail: Ember.computed.empty('emailAddress')

  loginButtonStyle: (->
    return 'default' if @get('isInvalidEmail')
    return 'primary'
  ).property 'emailAddress'

`export default controller`
