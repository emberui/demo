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

    setAvatar: ->
      console.log "test"
      debugger

`export default route`
