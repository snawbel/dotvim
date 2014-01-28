# Eriks Vim setup

Inspired by http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

## Installing a new plugin
    git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
    git add .
    git commit -m "Install Fugitive.vim bundle as a submodule."

## Installing Vim on another machine

    cd ~
    git clone http://github.com/snawbel/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc
    cd ~/.vim
    git submodule init
    git submodule update

## Upgrading a plugin bundle

    cd ~/.vim/bundle/nerdtree
    git pull origin master

## Upgrading all bundles
 
    git submodule foreach git pull origin master

## Remove a plugin

    git submodule deinit bundle/zencoding
    rm -rf bundle/zencoding
    
# Other settings

## Remap Capslock to Ctrl/Esc

- Remap Caps Lock to Control in the Keyboard preference pane.
- In KeyRemap4MacBook, check Control L to Control L (+ When you type Control L only, send Escape).

Now, hitting Caps Lock alone will escape while holding it down and hitting another key will act as Control.



