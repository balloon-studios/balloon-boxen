class people::radicalrobot {
    include radicalrobot::software
    include radicalrobot::osx
    
    include projects::development
    include projects::infrastructure

    include virtualbox
}