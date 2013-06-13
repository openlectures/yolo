YOLo.ApplicationController = Em.ObjectController.extend
	isLoggedIn: false,
	login: ->
		@set('isLoggedIn', true)