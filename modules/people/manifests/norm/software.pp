class people::norm::software {
    include adium
    include chrome
    include dropbox
    include firefox

    package {
        [
            'cpanminus',
            'nvi',
            'the_silver_searcher',
            'unrar',
        ]:
        ensure => present,
    }
}
