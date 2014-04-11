controller = Ember.ObjectController.extend Ember.Validations.Mixin,
  email: null
  password: null
  passwordConfirmation: null
  avatar: null

  avatars: [
    { imageUrl: '/assets/images/avatar1.jpg' }
    { imageUrl: '/assets/images/avatar2.jpg' }
  ]

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
    return 'primary' if @get 'isValid'
    return 'default'
  ).property 'isValid'


  isInvalid: Em.computed.not 'isValid'

`export default controller`
