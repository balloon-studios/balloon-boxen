class projects::marks-and-spencer {
    file { "/Users/${::boxen_user}/balloon/mns":
        ensure => directory,
    }
    file { "/Users/${::boxen_user}/mns":
        ensure => link,
        target => "/Users/${::boxen_user}/balloon/mns",
    }

    repo::balloon::mns { 'mns-infra':
        dir => 'config-mgmt',
    }
    file { "/Users/${::boxen_user}/balloon/mns/activate-ansible":
        ensure => link,
        target => "/Users/${::boxen_user}/balloon/balloon/config-mgmt/bin/activate-ansible",
    }
}
