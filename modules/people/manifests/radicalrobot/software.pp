class people::radicalrobot::software {
    include chrome
    include firefox
    include github_for_mac
    include homebrew

    include dropbox
    login_item { "Dropbox": } # makes it start up on login

    include sublime_text_3
    file { "/usr/local/bin/subl":
        ensure => link,
        target => '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl',
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