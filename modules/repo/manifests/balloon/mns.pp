define repo::balloon::mns ($dir = $title) {
    repository { "/Users/${::boxen_user}/balloon/mns/${dir}":
        source  => "git@github.com:balloon-studios/${title}.git",
    }
}
