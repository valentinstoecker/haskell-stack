FROM ubuntu as dev
RUN apt-get update -y && apt-get install -y git wget cabal-install build-essential libnuma1 libnuma-dev libtinfo-dev libtinfo5 libtinfo6 libc6-dev
RUN cabal update

RUN cabal install --constraint "aeson == 1.5.6.0" stack
RUN stack install steeloverseer
