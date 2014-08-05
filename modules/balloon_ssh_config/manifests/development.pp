class balloon_ssh_config::development {
    ssh_config::fragment { "balloon_dev":
        source => 'puppet:///modules/balloon_ssh_config/dev_ssh_config',
    }
}
