class people::norm::software {
    include adium
    include chrome

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
