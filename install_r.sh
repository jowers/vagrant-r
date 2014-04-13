#! /bin/sh

# sort out keys
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -

# Appends the CRAN repository to your sources.list file 
sudo sh -c 'echo "deb http://cran.ma.imperial.ac.uk/bin/linux/ubuntu precise/" >> /etc/apt/sources.list'

# update and install
sudo apt-get update
sudo apt-get install -y r-base
sudo apt-get install -y git-core

# Need libcurl
sudo apt-get install -y libcurl4-openssl-dev

# Install tmux
sudo apt-get install -y tmux

# TODO - get some known dot files
#    .bashrc
#    .screenrc
