YOLo.AuthSignOutView = Em.View.extend
  templateName: 'sign-out'

  submit: (event, view) ->
    event.preventDefault()
    event.stopPropagation()
    Auth.signOut()
