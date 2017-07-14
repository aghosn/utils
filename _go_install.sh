#!/bin/bash

GO_ROOT="~/"
GO_URL="https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz"
GO_TAR="go1.8.3.linux-amd64.tar.gz"

cd $GO_ROOT
pwd
if [ -d "go" ]; then
	echo -e "Error: the folder go already exists. Please remove it."
	exit 1
fi

curl -O $GO_URL
tar -xvf $GO_TAR
rm $GO_TAR

if [ -d "Documents/Programs" ]; then
	echo "Programs folder already exists."
else 
	mkdir Documents/Programs
fi

mkdir Document/Programs/Go


#Setup the bashrc.
echo 'export GOROOT=$HOME/go' >> .bashrc
echo 'export PATH=$PATH:$GOROOT/bin' >> .bashrc
echo 'export GOARCH=amd64' >> .bashrc
echo 'export GOOS=linux' >> .bashrc
echo 'export GOPATH=$HOME/Documents/Programs/Go' >> .bashrc
echo 'export GOBIN=$GOPATH/bin' >> .bashrc

