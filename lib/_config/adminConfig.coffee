@AdminConfig =
	name: Config.name
	collections:
		Contacts:
			color: 'red'
			icon: 'users'
			tableColumns: [
				{ label: 'Name', name: 'name' }
				{ label: 'Last name', name: 'lastName' }
				{ label: 'Phone', name: 'phoneNumber' }
				{ label: 'Email', name: 'email' }
				{ label: 'Role', name: 'role' }
			]
		Venues:
			color: 'blue'
			icon: 'futbol-o'
			tableColumns: [
				{ label: 'Name', name: 'name' }
				{ label: 'Sport', name: 'sport' }
				{ label: 'Phone number', name: 'phoneNumber' }
				{ label: 'Location', name: 'location' }
			]	
					
	dashboard:
		homeUrl: '/dashboard'
	autoForm:
		omitFields: ['createdAt', 'updatedAt']
