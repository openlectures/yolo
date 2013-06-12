YOLo.Topic = DS.Model.extend
  topic: DS.attr('string')
  description: DS.attr('string')
  subject: DS.belongsTo('YOLo.Subject')
  seab_sub_topic: DS.belongsTo('YOLo.SeabSubTopic')
  lessons: DS.hasMany('YOLo.Lesson')
