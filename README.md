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

install plugin

> git clone https://github.com/zsh-users/zsh-docker.git

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

choose the installed jdk
