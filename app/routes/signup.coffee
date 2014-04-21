`import modalComponent from 'emberui/components/eui-modal'`
`import selectAvatar from 'appkit/views/select-avatar'`

route = Ember.Route.extend
  actions:
    selectAvatar: ->
      modalComponent.show
        targetObject: @
        contentViewClass: selectAvatar
        content: { selectedAvatar: @get('controller.avatar'), avatars: @get('controller.avatars') }
        style: 'full'
        class: 'selectavatar'
        accept: 'setAvatar'

    setAvatar: (avatar) ->
      @set 'controller.avatar', avatar.imageUrl

    createAccount: ->
      if @get 'controller.isValid'
        # create account
        @setProperties {
          'controller.application.email': @get('controller.email'),
          'controller.application.password': @get('controller.password'),
          'controller.application.avatar': @get('controller.avatar')
        }
        @transitionTo 'index'

      else
        @set 'controller.submitted', true

`export default route`
