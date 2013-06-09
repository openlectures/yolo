YOLo.Checkpoint = DS.Model.extend
  checkpoint: DS.attr('string')
  lesson: DS.belongsTo('YOLo.Lesson')
  description: DS.attr('string')
  videourl: DS.attr('string')
  objective: DS.attr('string')
