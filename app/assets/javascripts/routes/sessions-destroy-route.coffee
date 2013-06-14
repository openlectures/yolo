YOLo.SessionsDestroyRoute = Em.Route.extend
  enter: ->
    $.ajax("/sign_out")
    controller = @controllerFor("currentUser")
    controller.set 'content', undefined

    @transitionTo 'home'
