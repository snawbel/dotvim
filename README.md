# Eriks Vim setup

## Installing a new plugin 
Use [vim-plug](https://github.com/junegunn/vim-plug)

1. Add `Plug 'repo/plugin'` to .vimrc
2. Save and source .vimrc `:so %`
3. Run `:PlugInstall`

## Installing Vim on another machine

    cd ~
    git clone http://github.com/snawbel/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc
    cd ~/.vim
    mkdir plugged
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## Upgrading a plugin bundle

`:PlugUpdate pluginname`

## Remove a plugin

Remove from `.vimrc`

## Vim Dances

### Find in all files

`:vim /StuffToFind/g ./src/**/*.js`

Then use <kbd>[</kbd><kbd>q</kbd> and <kbd>]</kbd><kbd>q</kbd> to move between search hits.
    
# Other settings

## Remap Capslock to Ctrl/Esc

- Remap Caps Lock to Control in the Keyboard preference pane.
- In KeyRemap4MacBook, check Control L to Control L (+ When you type Control L only, send Escape).

Now, hitting Caps Lock alone will escape while holding it down and hitting another key will act as Control.

## Font Stuff

- Use https://github.com/cseelus/monego - Monaco with variants.
- Enable italics in iTerm with a custom TERMINFO: https://gist.github.com/sos4nt/3187620#gistcomment-2905187




