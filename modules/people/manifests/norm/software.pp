class people::norm::software {
    include adium
    include camino
    include chrome
    include dropbox
    include firefox
    include gitx::dev

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
