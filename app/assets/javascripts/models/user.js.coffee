YOLo.User = DS.Model.extend
  email: DS.attr('string')
  authToken: DS.attr('string')
  password: DS.attr('string')
  passwordConfirmation: DS.attr('string')