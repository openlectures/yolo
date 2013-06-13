YOLo.Router.map ->
  @route "home",
    path: ''
  @route "about",
    path: '/about'
  @route "outreach",
    path: '/outreach'
  @route "press",
    path: '/press'
  @route "search",
    path: '/search'
  @route "partners",
    path: '/partners'
  @route "subjects",
    path: '/subjects'
  @route "subject",
    path: '/subjects/:subject_id'
  @route "topic",
    path: '/topics/:topic_id'
  @route "lesson",
    path: '/lessons/:lesson_id'
  @route "checkpoint",
    path: '/checkpoints/:checkpoint_id'
  @route "users",
  	path: "/users"
  @route "user",
  	path: '/users/:user_id'