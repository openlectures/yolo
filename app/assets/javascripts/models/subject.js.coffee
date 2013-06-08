YOLo.Subject = DS.Model.extend
  subject: DS.attr('string')
  seab_topics: DS.hasMany('YOLo.SeabTopic')
  topics: DS.hasMany('YOLo.Topic')
