class projects::development {
    include vagrant

    package {
        [
            'ansible',
        ]:
        ensure => present,
        provider => 'pip',
    }
}
