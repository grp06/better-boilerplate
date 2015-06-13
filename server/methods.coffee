Todos = new Mongo.Collection('todos')

Meteor.methods
	insertTodo: (enteredText, date) ->
		console.log enteredText
		console.log date
		Todos.insert
		  text: enteredText
		  createdAt: date