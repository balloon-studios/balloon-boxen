class people::norm::git_config {
    git::config::global { 'alias.s': value => 'status -bs' }
    git::config::global { 'push.default': value => 'simple' }
}
