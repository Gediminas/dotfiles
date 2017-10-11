#!/bin/bash

pushd bundle/YouCompleteMe
python install.py --clang-completer --system-libclang --tern-completer --racer-completer
popd

pushd bundle/tern
npm install
popd
