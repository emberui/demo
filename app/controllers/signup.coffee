controller = Ember.ObjectController.extend Ember.Validations.Mixin,
  email: null
  password: null
  passwordConfirmation: null
  avatar: null

  validations: {
    email: {
      presence: { message: true }
      length: { minimum: 3, message: true }
    },
    password: {
      presence: { message: true },
      confirmation: { message: true }
    },
    avatar: {
      presence: { message: true }
    }
  }

  createAccountButtonStyle: (->
    return 'default' if @get 'errors'
    return 'primary'
  ).property 'errors'

`export default controller`
