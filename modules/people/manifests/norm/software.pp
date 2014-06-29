class people::norm::software {
    include adium
    include camino
    include chrome
    include firefox
    include gitx::dev
    include istatmenus4
    include minecraft
    include mou
    include notational_velocity::nvalt
    include redis
    include things

    include sublime_text_3
    file { "/usr/local/bin/subl":
        ensure => link,
        target => '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl',
    }

    include dropbox
    login_item { "Dropbox": }

    include fastscripts
    login_item { "FastScripts": }

    include launchbar
    login_item { "LaunchBar": }

    # installed via Mac App Store
    login_item { "AntiRSI": }
    login_item { "HardwareGrowler": }

    include textmate
    file { "/usr/local/bin/mate":
        ensure => link,
        target => '/Applications/TextMate.app/Contents/Resources/mate',
    }

    include vagrant
    vagrant::plugin { 'vagrant-vmware-fusion': }

    package {
        [
            'bash-completion',
            'cpanminus',
            'nvi',
            'the_silver_searcher',
            'unrar',
            'wget',
        ]:
        ensure => present,
    }

    package {
        [
            'virtualenv',
            'virtualenvwrapper',
        ]:
        ensure => present,
        provider => 'pip',
    }
}
