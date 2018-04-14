#!/bin/bash
# -----------------------------------------------------------------------------
# @see https://github.com/tomasperezv/my-coding-standards
# -----------------------------------------------------------------------------
npm install -g eslint

(
  export PKG=eslint-config-airbnb;
  npm info "$PKG@latest" peerDependencies --json | command sed 's/[\{\},]//g ; s/: /@/g' | xargs npm install -g --save-dev "$PKG@latest"
)

ln -s $PWD/eslintrc $HOME/.eslintrc
