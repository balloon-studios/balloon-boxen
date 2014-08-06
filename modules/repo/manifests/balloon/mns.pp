define repo::balloon::mns {
    repository { "/Users/${::boxen_user}/balloon/mns/${title}":
        source  => "git@github.com:balloon-studios/${title}.git",
    }
}
