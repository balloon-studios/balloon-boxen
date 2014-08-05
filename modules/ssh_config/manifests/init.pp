class ssh_config {
    include concat::setup

    $path = "/Users/${::luser}/.ssh/config"
    
    concat { $path:
        mode    => '0600',
        owner   => $::luser,
        group   => 'staff',
    }
}
