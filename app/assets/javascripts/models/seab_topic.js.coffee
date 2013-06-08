YOLo.SeabTopic = DS.Model.extend
  topic: DS.attr('string')
  description: DS.attr('string')
  subject: DS.belongsTo('YOLo.Subject')
