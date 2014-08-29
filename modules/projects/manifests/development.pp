class projects::development {
    include vagrant

    class { 'balloon_ssh_config::development': }

    package {
        [
            'autossh',
        ]:
        ensure => present,
    }

    package {
        [
            'ansible',
        ]:
        ensure => present,
        provider => 'pip',
    }
}
