class projects::infrastructure {
    include packer
    
    repo::balloon { 'infrastructure': }

    repo::balloon { 'balloon-infra':
        dir => 'config-mgmt',
    }
    file { "/Users/${::boxen_user}/bin/activate-ansible":
        ensure => link,
        target => "/Users/${::boxen_user}/balloon/balloon/config-mgmt/bin/activate-ansible",
    }
}
