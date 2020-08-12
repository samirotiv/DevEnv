# DevEnv

## Versions
Repo is currently designed for Ubuntu 20.04 Focal. To run it on an older version, say 18.04 Bionic, please install latest builds of Tmux and Neovim.


## Fixes
### Fix for bad line hightlighting in NERDTree:
Typing the following command fixes it in neovim:
```
highlight NERDTreeFile ctermbg=NONE
```

Unfortunately to get this to load from the start is less easy. Try running a `:highlight` and you will see that it is cleared on running the above command. But on trying to execute the same command from init.vim, it is actually overridden by a link to normal. To fix this, I just went to the NERDTree folder, ran a search for `hi.*NERDTreeFile`, and commented out the line responsible for it. Leaving out the precise location of the file to make this README immune to version changes.


## Directory-specific git config
Do take a look at .gitconfig in the home folder, it has a configuration to create a .gitconfig_include based on which folder you are in. A sample .gitconfig_include has been created in the github folder.


