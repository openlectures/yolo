YOLo.ApplicationController = Em.ObjectController.extend
	email: null,
	password: null,
	login: ->
		YOLo.Session.createRecord({email: @get('email'), password: @get('password')}).save()
	logout: ->
		$.get('/sign_out');