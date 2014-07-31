class people::norm {
    include norm::software
    include norm::osx
    include norm::settings

    repo::balloon { 'quotebot': }
    repo::balloon { 'slack-echo-chamber': }

    include projects::development
    include projects::infrastructure
}
