Todos = new Mongo.Collection('todos')

Template.home.helpers 
  returnAllTodos: ->
    Todos.find({}, {sort: {createdAt: -1}})
Template.home.events 'keyup': (e) ->
  if e.which == 13
    enteredText = $(".enterTodo").val()
    createdAt = moment().format('h:mm:ss a')
    todosObject = {}
    todosObject.enteredText = enteredText
    todosObject.createdAt = createdAt
    console.log todosObject
    Meteor.call 'insertTodo', todosObject, (error, response) ->
      console.log error
      console.log response