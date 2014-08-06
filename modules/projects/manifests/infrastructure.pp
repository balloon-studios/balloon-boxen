class projects::infrastructure {
    include packer
    
    repo::balloon { 'infrastructure': }
    repo::balloon { 'balloon-infra':
        dir => 'config-mgmt',
    }
}
