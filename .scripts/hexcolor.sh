#!/bin/bash

blue="$(bc <<< "ibase=16;${1:0:2}")"
red="$(bc <<< "ibase=16;${1:2:2}")"
green="$(bc <<< "ibase=16;${1:4:2}")"

printf "\x1b[38;2;${blue};${red};${green}m\x1b[0m\n"
