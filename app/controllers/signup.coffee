controller = Ember.ObjectController.extend Ember.Validations.Mixin,
  needs: "application"
  application: Ember.computed.alias("controllers.application")

  email: null
  password: null
  passwordConfirmation: null
  avatar: null
  submitted: false

  avatars: [
    { imageUrl: 'assets/images/avatar1.jpg' }
    { imageUrl: 'assets/images/avatar2.jpg' }
  ]

  validations: {
    email: {
      presence: { message: true },
      format: { with: /^[^@]+@[^@]+\.[^@\.]{2,}$/, allowBlank: false, message: 'That is not a real email address' }
    },
    password: {
      presence: { message: true },
      confirmation: { message: true }
    }
  }

`export default controller`
