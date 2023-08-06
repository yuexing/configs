# General Settings

Settings - Keyboard Shortcut 

- Launch Pad
- Input method

# Network

(Reference to xiegongji)

Chrome: Settings - Wifi - Advanced - Proxy 

OpenVPN(for all): remember to close Wifi settings

# Development

> xcode-select —-install

install homebrew

>  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

install gdb (https://dev.to/jasonelwood/setup-gdb-on-macos-in-2020-489k)

> brew install gdb
> codesign --entitlements gdb-entitlement.xml -fs gdbcert /usr/local/bin/gdb

install oh-my-zsh

> sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Vim

vim install pathogen

> https://github.com/tpope/vim-pathogen

vim pathogen install nerdtree

> https://github.com/preservim/nerdtree

vim ctrlp

> http://kien.github.io/ctrlp.vim/#installation

vim omnicompeleting

> https://vim.fandom.com/wiki/C%2B%2B_code_completion

vim syntax checking
> https://github.com/vim-syntastic/syntastic

vim A-script
> https://www.vim.org/scripts/script.php?script_id=31

# Java

Download jdk

> mkdir ~/playground/java
> tar -xzf
> export JAVA_HOME=
> export PATH="$JAVA_HOME/bin:$PATH"
> java --version

Download Maven

> cd ~/playground/java
> tar -xzf
> export M2_HOME=
> export PATH="$M2_HOME/bin:$PATH"
> mvn --version

Download Eclipse

- choose the installed jdk during installation
- eclipse config maven (installation, user settings)
- eclipse config junit ("Java Build Path" -> "Libraries" -> "Add Library")
- eclipse tab -> 4_spaces: https://www.cnblogs.com/ZenoLiang/p/10318394.html

# Docker

Download Docker and config

> export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin/"

# Pyenv

Install 

> brew install pyenv
> pyenv

Config zshrc plugins

Pyenv Usage https://realpython.com/intro-to-pyenv/

> pyenv install --list | grep " 3\.[678]"
> pyenv install -v 3.7.13 // lower version may meet cannot find clang++
> pyenv versions
> pyenv uninstall 2.7.15
> pyenv global 2.7.15 // local, shell
> pyenv which pip

Pyenv virtualenv Usage

> pyenv virtualenv 3.6.8 myproject
> pyenv local myproject
