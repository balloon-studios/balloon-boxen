# README BALLOON-BOXEN

## PRE-REQUISITES
- Xcode command line tools ('xcode-select --install')
- Have set up SSH within Github 
- Have a base $USER/balloon/balloon directory in which you store your repositories 

## SET UP BOXEN
- 'sudo mkdir -p /opt/boxen' #create boxen directory (default dir; choose another if you prefer and change commands below accordingly)
- 'sudo chown $USER /opt/boxen' #make the current user the owner of the boxen directory
- 'git clone git@github.com:balloon-studios/balloon-boxen.git $USER/balloon/balloon/balloon-boxen' #clone the balloon-boxen repo to the local machine in the boxen directory
- 'cd /opt/boxen' then 'ln -s $USER/balloon/balloon/balloon/ballon-boxen repo' to create symlink point from the boxen directory to the repo kept in balloon space

[NOTE: If you already have homebrew, run 'brew list' to understand what is already set up using it, and make notes so that it can be removed and then replaced by the boxen homebrew install. Alternatively, do 'type brew' to find out where it is stored and then 'mv' to rename the folder and keep it as a backup.]

- 'script/boxen --srcdir=$HOME/balloon' #initial setup of boxen (this will take a)
- Once installed, add line 'source /opt/boxen/env.sh' to bottom of '.bash_profile' in $USER home directory using your text editor of choice. 

## ORGANISATIONAL SETTINGS
- Under '~/balloon/balloon/balloon-boxen/modules/projects/manifests' we will define a series of '.pp' manifests defining what repos, software, etc, should be installed by boxen for anyone in the organisation
- 

### PERSONAL SETTINGS
- Under '~/balloon/balloon/balloon-boxen/modules/people/manifests' create a manifest file '$github-username.pp'
- In this file you can specify software and other things (anything Puppet is capable of dealing with) that you individually want to have set up on an OS X machine
