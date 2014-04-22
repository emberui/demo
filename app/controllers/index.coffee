controller = Ember.ObjectController.extend Ember.Validations.Mixin,
  needs: "application"
  application: Ember.computed.alias("controllers.application")

  email: null
  password: null

  isInvalid: Ember.computed.not 'isValid'

  validations: {
    email: {
      presence: { message: true },
      format: { with: /^[^@]+@[^@]+\.[^@\.]{2,}$/, allowBlank: false, message: 'That is not a real email address' }
    },
    password: {
      presence: { message: true }
    }
  }

  loginButtonStyle: (->
    return 'primary' if @get 'isValid'
    return 'default'
  ).property 'isValid'

`export default controller`
