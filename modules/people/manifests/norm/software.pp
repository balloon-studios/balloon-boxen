class people::norm::software {
    include adium
    include camino
    include chrome
    include dropbox
    include firefox
    include gitx::dev
    include istatmenus4
    include launchbar
    include notational_velocity::nvalt
    include sublime_text_3
    include textmate

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
