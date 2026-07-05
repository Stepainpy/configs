#!/bin/bash

alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

alias cls='clear'

alias nano='/usr/bin/nano -/'

alias cmake-ready='cmake -S . -B build'
alias cmake-build='cmake --build build --config Release'
alias cmake-clean='rm -rf bin/ build/'

alias ctest-run='ctest --test-dir build --output-on-failure'

alias tree-proj='tree $(pwd) -a --dirsfirst -I .git -I build'

function mcd() {
    mkdir -p $1
    cd $1
}
