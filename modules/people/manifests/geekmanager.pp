class people::geekmanager {
    include geekmanager::software
    include geekmanager::osx
    
    include projects::development
    include projects::infrastructure

    include virtualbox
}