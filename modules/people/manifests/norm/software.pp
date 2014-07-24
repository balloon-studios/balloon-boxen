class people::norm::software {
    include adium
    include camino
    include chrome
    include firefox
    include fluid
    include gitx::dev
    include istatmenus4
    include minecraft
    include mou
    include notational_velocity::nvalt
    include redis
    include things
    include vmware_fusion

    include dropbox
    login_item { "Dropbox": }

    include fastscripts
    login_item { "FastScripts": }

    include launchbar
    login_item { "LaunchBar": }

    include sublime_text_3
    file { "/usr/local/bin/subl":
        ensure => link,
        target => '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl',
    }

    include textmate
    file { "/usr/local/bin/mate":
        ensure => link,
        target => '/Applications/TextMate.app/Contents/Resources/mate',
    }

    include vagrant
    vagrant::plugin { 'vagrant-vmware-fusion': }

    # installed via Mac App Store
    login_item { "AntiRSI": }
    login_item { "HardwareGrowler": }

    homebrew::tap { 'caskroom/cask': }

    package {
        [
            'atomicparsley',
            'bash-completion',
            'brew-cask',
            'cpanminus',
            'ffmpeg',
            'jq',
            'lesspipe',
            'markdown',
            'nvi',
            'the_silver_searcher',
            'unrar',
            'watch',
            'wget',
            'youtube-dl',
        ]:
        ensure => present,
    }

    package {
        [
            'honcho',
            'virtualenv',
            'virtualenvwrapper',
            'https://github.com/s3tools/s3cmd/archive/v1.5.0-rc1.tar.gz',
        ]:
        ensure => present,
        provider => 'pip',
    }
}
