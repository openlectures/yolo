YOLo.ApplicationController = Em.ObjectController.extend
  email: null
  password: null
  login: ->
    YOLo.Session.createRecord({email: @get('email'), password: @get('password')}).save()
  logout: ->
    $.ajax("/sign_out").done (data) ->
      console.log(data);
