# Configuration repo

Contains config snippets to help set up new machines for my use.

## Instructions

### Bash
```bash
cd <this_repo>
cp bash_aliases ~/.bash_aliases
cp bash_profile ~/.bash_profile
cp bashrc ~/.bash_rc
```

### Oh-my-bash

Install [via curl](https://github.com/ohmybash/oh-my-bash?tab=readme-ov-file#via-curl)

Install my custom theme based on `font`
```bash
cd <this_repo>
mkdir -p ~/.oh-my-bash/custom/themes/font
cp oh-my-bash/custom/themes/font/font.theme.sh ~/.oh-my-bash/custom/themes/font/font.theme.sh
```

### VSCode / Cursor / etc.

Move `vscode/settings.json` to the appropriate location depending on OS.

On Mac, the system font is fine, everywhere else install the Jetbrains Monospace fonts and set the VSCode settings to use it.

### Git

```bash
cd <this_repo>
cp gitconfig ~/.gitconfig
```
Then add the appropriate email to `~/.gitconfig`
