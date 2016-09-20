# Larribas' Dotfiles

These dotfiles are tested and meant to be installed using [GNU Stow](https://www.gnu.org/software/stow/).

As such, they are organized in topic directories that point to the actual location of the dotfiles within $HOME.


## How do I install them?

Just install `stow` and execute

```
#> stow <topic> -t ~/
``` 

Where topic would be, for instance, `fish`, `git`, etc.


## Caveats and troubleshooting!

Before linking to a file that already exists, please make sure you delete the previous file or use the proper stow flag (`stow --help`). Stow will not overwrite it by default.

