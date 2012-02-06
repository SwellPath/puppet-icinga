class icinga::contact {
	icinga::contact::contactgroups { "admins":
		alias => "Admins"
	}

	Nagios_contact <||> {
		notify => Exec["fix-permissions"],
	}

	Nagios_contactgroup <||> {
		notify => Exec["fix-permissions"],
	}
}

# vim: tabstop=3
