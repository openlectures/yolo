YOLo.Lesson = DS.Model.extend
  lesson: DS.attr('string')
  topic: DS.belongsTo('YOLo.Topic')
  checkpoints: DS.hasMany('YOLo.Checkpoint')
  userId: DS.attr('number')
