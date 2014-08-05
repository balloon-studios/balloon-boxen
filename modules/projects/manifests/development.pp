class projects::development {
    include vagrant

    class { 'balloon_ssh_config::development': }

    package {
        [
            'ansible',
        ]:
        ensure => present,
        provider => 'pip',
    }
}
