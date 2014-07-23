define repo::balloon {
    repository { "/Users/${::boxen_user}/balloon/balloon/${title}":
        source  => "git@github.com:balloon-studios/${title}.git",
    }
}
