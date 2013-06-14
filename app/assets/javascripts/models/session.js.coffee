YOLo.Session = DS.Model.extend
	email: DS.attr('string')
	password: DS.attr('string')
	
	didCreate: ->

	didError: ->
		alert("WOOPS PLEASE TRY AGAIN")
