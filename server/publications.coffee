Meteor.publish 'todos', ->
	Todos.find()