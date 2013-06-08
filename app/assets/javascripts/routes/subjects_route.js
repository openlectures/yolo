YOLo.SubjectsRoute = Ember.Route.extend({
  model: function() {
    return YOLo.Subject.find();
  }
});
