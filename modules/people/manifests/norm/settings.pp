class people::norm::settings {
    repo::personal::install { 'audio-tools': }
    repo::personal::install { 'bash-composition': }
    repo::personal::install { 'homedir': }
    repo::personal::install { 'osx_scripts': }
    repo::personal::install { 'osx_settings': }
    repo::personal::install { 'osx_shortcuts': }

    ssh_config::fragment { 'norm_ssh_config':
        source => 'puppet:///modules/people/norm/ssh_config',
    }
}
