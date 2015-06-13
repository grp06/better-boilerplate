Todos = new Mongo.Collection('todos')

Meteor.methods
	insertTodo: (todoObject) ->
		Todos.insert todoObject