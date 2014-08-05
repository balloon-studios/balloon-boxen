class people::norm {
    include norm::software
    include norm::osx
    include norm::settings
    include norm::personal_code

    repo::balloon { 'quotebot': }
    repo::balloon { 'slack-echo-chamber': }
    repo::balloon { 'balloon-boxen': }

    include projects::development
    include projects::infrastructure
    include projects::marks-and-spencer
}
