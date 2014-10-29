define repo::balloon ($dir = $title) {
    repository { "/Users/${::boxen_user}/balloon/balloon/${dir}":
        source  => "git@github.com:balloon-studios/${title}.git",
    }
}
