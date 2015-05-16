#!/bin/bash

pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null
SCRIPTPATH="$SCRIPTPATH/../"
LISTFILES="$(ls $SCRIPTPATH)"
cd $SCRIPTPATH
if [[ $LISTFILES  == *"python"* ]]
    then
    if hash python 2>/dev/null; then
        python python/fizzbuzz.py
        exit
    fi
fi; if [[ $LISTFILES  == *"ruby"* ]]
    then
    if hash ruby 2>/dev/null; then
        ruby ruby/fizzbuzz.rb
        exit
    fi
fi; if [[ $LISTFILES  == *"php"* ]]
    then
    if hash php 2>/dev/null; then
        php php/fizzbuzz.php
        exit
    fi
fi
; if [[ $LISTFILES  == *"lolcode"* ]]
    then
    if hash lci 2>/dev/null; then
        lci lolcode/fizzbuzz.lol
        exit
    fi
fi
