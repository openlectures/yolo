YOLo.Session = DS.Model.extend
	email: DS.attr('string')
	password: DS.attr('string')
	
	didCreate: ->
		alert("Logged In!")
		
	didError: ->
		alert("WOOPS PLEASE TRY AGAIN")