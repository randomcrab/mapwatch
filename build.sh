#!/bin/sh -eux
cd "`dirname "$0"`"
dest=./dist
rm -rf $dest
mkdir -p $dest
cp -r ./src/ports.js ./src/*.css ./src/index.html ./examples $dest
elm-make src/Main.elm --output=$dest/elm.js
