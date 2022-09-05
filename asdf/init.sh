#!/bin/bash

if ! (type asdf > /dev/null 2>&1); then
  brew install coreutils curl git
  brew install asdf
fi

echo ".$(brew --prefix asdf)/asdf.sh" >> ~/.zshrc

# ===asdf-nodejs===
asdf plugin add nodejs
asdf install nodejs latest
asdf global nodejs latest

# ===asdf-python===
asdf plugin add python
asdf install python latest
asdf global python latest

