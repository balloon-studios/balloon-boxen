class projects::marks-and-spencer {
    file { "/Users/${::boxen_user}/balloon/mns":
        ensure => directory,
    }
    file { "/Users/${::boxen_user}/mns":
        ensure => link,
        target => "/Users/${::boxen_user}/balloon/mns",
    }
}
