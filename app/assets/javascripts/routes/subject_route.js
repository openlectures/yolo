YOLo.SubjectRoute = Ember.Route.extend({
  model: function(params) {
    return YOLo.Subject.find(params.subject_id);
  }
});
