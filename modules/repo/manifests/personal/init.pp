define repo::personal {
    repository { "${boxen::config::srcdir}/${title}":
        source => "git@github.com:${::luser}/${title}.git",
    }
}
