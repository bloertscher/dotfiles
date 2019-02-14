#!/bin/bash
GIT_EXTRAS_PATH=~/.dotfiles/shell/plugins/git-extras
INSTALL_PATH=$HOME/software

if [[ -d "$GIT_EXTRAS_PATH" && ! -x "${INSTALL_PATH}/bin/git-extras" ]]; then
    echo "Installing git-extras"
    cd $GIT_EXTRAS_PATH
    # checkout the latest tag
    git checkout $(git describe --tags $(git rev-list --tags --max-count=1))
    make install PREFIX=$INSTALL_PATH
    exit 0
else
    echo "${GIT_EXTRAS_PATH} does not exist or is already installed"
    exit 1
fi
