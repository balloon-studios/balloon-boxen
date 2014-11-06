class people::geekmanager {
    include geekmanager::software
    include geekmanager::osx
    
    include projects::balloon-studios
    include projects::development
    include projects::infrastructure
    include projects::marks-and-spencer

    include virtualbox
}
