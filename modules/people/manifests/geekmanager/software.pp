class people::geekmanager::software {
    include chrome
    include firefox
    include github_for_mac
    include minecraft
    include mou

    include dropbox
    login_item { "Dropbox": } # makes it start up on login

    include alfred
    login_item { "Alfred": }

    include sublime_text_3
    file { "/usr/local/bin/subl":
        ensure => link,
        target => '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl',
    }

}