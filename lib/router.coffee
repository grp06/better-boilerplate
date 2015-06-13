Router.configure
  layoutTemplate: 'layout'
  notFoundTemplate: 'notFound'
Router.route '/', name: 'home'

Router.onBeforeAction ->
  if !Meteor.userId()
    # if the user is not logged in, render the Login template
    @render 'login'
  else
    # otherwise don't hold up the rest of hooks or our route/action function
    # from running
    @next()
  return
