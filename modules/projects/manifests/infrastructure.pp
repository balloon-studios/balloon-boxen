class projects::infrastructure {
    include packer
    
    repo::balloon { 'infrastructure': }
}
