define repo::personal::install {
    repository { "${boxen::config::srcdir}/${title}":
        source => "git@github.com:${::luser}/${title}",
        notify => Exec["make-${title}"],
    }
  
    exec { "make-${title}":
        command     => 'make install',
        cwd         => "${boxen::config::srcdir}/${title}",
        refreshonly => true,
    }
}