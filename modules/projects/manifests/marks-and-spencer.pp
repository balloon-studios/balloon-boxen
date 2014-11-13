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

    repo::balloon::mns { 'mns-multi-search': }
    repo::balloon::mns { 'mns-api-access': }
    repo::balloon::mns { 'cs-mandsplus-acceptance-suite': }
    repo::balloon::mns { 'keyhole-surgery': }
    repo::balloon::mns { 'plusplus-working': }

    package {
        [
            'autossh',
        ]:
        ensure => present,
    }

    package {
        'boot2docker': ensure => '1.3.0', 
    }

    include vagrant
    include virtualbox
    
}
