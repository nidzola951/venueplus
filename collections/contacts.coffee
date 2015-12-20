@Contacts = new Meteor.Collection('contacts');

Schemas.Contacts = new SimpleSchema
	name:
		label: 'Name'
		type: String
		max: 20

	lastName:
		label: 'Last name'
		type: String
		max: 20

	email:
		label: 'Email'
		type: String
		max: 160
		optional: false

	phoneNumber:
		label: 'Phone number'
		type: String
		max: 20

	role:
		label: 'Role'
		type: String
		allowedValues: [
	  		"Venue staff",
	  		"Nike staff - Marketing",
	  		"Nike staff - Accounting",
	  		"Nike staff - Human Resources"
	  		"Other"
	 	]

	notes:
		label: 'Notes'
		optional: true
		type: String
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

	profilePhoto:
		label: 'Profile picture'
		type: String
		optional: true
		autoform:
			afFieldInput:
				type: 'fileUpload'
				collection: 'Attachments'

Contacts.attachSchema(Schemas.Contacts)
