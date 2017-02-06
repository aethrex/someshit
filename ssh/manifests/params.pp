class ssh::params {
	case $operatingsystem {
		Debian: {
			$ssh_package_name = 'openssh-server'
			$ssh_service_config = '/etc/ssh/sshd_config'
			$ssh_service_name = 'sshd'
		}
	}
}
