Todos = new Mongo.Collection('todos')

Template.home.helpers counter: ->
  Session.get 'counter'
Template.home.events 'keyup': (e) ->
  if e.which == 13
    enteredText = $(".enterTodo").val()
    date = new Date()
    Meteor.call 'insertTodo', enteredText, date, (error, response) ->
      console.log error
      console.log response