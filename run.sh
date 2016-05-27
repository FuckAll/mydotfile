#!/usr/bin/env bash
yum install git -y
yum install go -y
yum install vim -y
yum install tmux -y

echo '-----------mkdir start-----------'
mkdir -p /Users/KongFu/BaseEnv/bin
mkdir -p /Users/KongFu/BaseEnv/:/Users/KongFu/17mei/
echo '-----------mkdir end-------------'


echo '-----------export start-----------'
export GOBIN="/Users/KongFu/BaseEnv/bin"
export GOPATH="/Users/KongFu/BaseEnv/:/Users/KongFu/17mei/"
echo '-----------export start-----------'

echo '-----------go get start-----------'
go get -u github.com/lib/pq
go get -u github.com/garyburd/redigo/redis

go get -u github.com/hashicorp/consul/api

go get -u golang.org/x/crypto/bcrypt
go get -u google.golang.org/grpc
go get -u github.com/golang/protobuf/protoc-gen-go

go get -u github.com/codegangsta/negroni
go get -u github.com/gorilla/mux
go get -u github.com/gorilla/context
go get -u github.com/dgrijalva/jwt-go
go get -u github.com/pborman/uuid

go get -u github.com/wothing/log

go get -u github.com/elgs/gostrgen
go get -u qiniupkg.com/api.v7/kodo
go get -u qiniupkg.com/x/url.v7
go get -u github.com/ylywyn/jpush-api-go-client

go get -u github.com/smartystreets/assertions
go get -u github.com/smartystreets/goconvey

go get -u github.com/bitly/go-simplejson
go get -u github.com/golang/protobuf/{proto,protoc-gen-go}

go get -u github.com/FuckAll/Docker-Ci
echo '-----------go get end-----------'


echo '-----------vim ide start-----------'
git clone https://github.com/FuckAll/mydotfile.git
cp ./mydotfile/.vimrc ~/.vimrc
cp ./mydotfile/.tmux.conf/ ~/.vimrc
cp ./mydotfile/.tmux.conf.local ~/.tmux.conf.local
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/Vundle.vim
vim +BundleInstall +qall
echo '-----------vim ide stop -----------'


echo '------------docker start-----------------'
curl -fsSL "https://get.docker.com/builds/Linux/x86_64/docker-1.9.1.tgz" -o docker-1.9.1.tgz && tar zxf docker-1.9.1.tgz -C / && rm docker-1.9.1.tgz
echo '------------docker end--------------------'
