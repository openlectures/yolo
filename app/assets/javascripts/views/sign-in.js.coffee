YOLo.AuthSignInView = Em.View.extend
  templateName: 'sign-in'

  email:    null
  password: null
  remember: false

  submit: (event, view) ->
    event.preventDefault()
    event.stopPropagation()
    YOLo.Auth.signIn
      data:
        email:    @get 'email'
        password: @get 'password'
        remember: @get 'remember'
