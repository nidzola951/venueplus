@Venues = new Meteor.Collection('venues');

Schemas.Venues = new SimpleSchema (
	name:
		label: 'Name'
		type: String
		max: 100

	sport:
		type: String
		label: 'Sport'
		allowedValues: [
	  		"Football",
	  		"Tennis",
	  		"Basketball",
	  		"Voleyball"
	 	]

	phoneNumber:
		label: 'Phone number'
		type: String
		max: 20

	contact:
		type: String
		label: 'Contact person'
		regEx: SimpleSchema.RegEx.Id
		autoform:
			options: ->
				_.map Contacts.find().fetch(), (user)->
					label: user.name + ' ' + user.lastName + ' (' + user.email + ')'
					value: user._id
	notes:
		type: String
		label: 'Notes'
		autoform:
			rows: 5

	createdAt:
		type: Date
		autoValue: ->
			if this.isInsert
				new Date()

	updatedAt:
		type: Date
		optional: true
		autoValue: ->
			if this.isUpdate
				new Date()

	location:
		type: String
		label: 'Venue location'
		optional: true
		autoform:
	  		type: 'map'
	  		geolocation: true
	  		searchBox: true
	  		autolocate: true
)

Venues.attachSchema(Schemas.Venues)
