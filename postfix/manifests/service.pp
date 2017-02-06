class postfix::service {
	service { "postfix":
		ensure     => running,
		hasstatus  => true,
		hasrestart => true,
		enable     => true,
		require    => Class["postfix::config"],
	}
}

class postfix::service::disabled inherits postfix::service {
	Service["postfix"] {
		ensure => stopped,
		enable => false,
	}
}

