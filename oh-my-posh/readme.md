# Oh My Posh

Configuration and set-up guide for oh-my-posh.

See full Oh My Posh docs [here](https://ohmyposh.dev/docs).

## Windows (PowerShell)

### Install Oh My Posh
Install oh-my-posh with PowerShell:
```shell
winget install JanDeDobbeleer.OhMyPosh -s winget
```
NOTE: This will install oh-my-posh at `C:\Users\user\AppData\Local\Programs\oh-my-posh\bin`

### Install a Nerd Font
Install a nerd font (*meslo*) with oh-my-posh (PowerShell):
```shell
oh-my-posh font install meslo
```

To configure the Windows Terminal to use the installed font, open the Windows Terminal settings (`ctrl+shift+,`) and in your settings.json file, add the font.face attribute under the defaults attribute in profiles:
```json
{
  "profiles": {
    "defaults": {
      "font": {
        "face": "MesloLGM Nerd Font"
      }
    }
  }
}
```

### Configure the Shell

Locate your PowerShell profile script, which can be found under the $PROFILE variable in PowerShell.
```shell
echo $PROFILE
```

If there is no profile set, you must first create one:
```shell
New-Item -Path $PROFILE -Type File -Force
```

Open your PowerShell profile script in the Notepad editor to modify:
```shell
notepad $PROFILE
```

Add the following to initialize oh-my-posh and configure pinktoepro as the theme:
```text
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/samuelbmarks/dotfiles/main/oh-my-posh/pinktoe.omp.json' | Invoke-Expression
```

Reload your profile for the changes to take effect: 
```shell
. $PROFILE
```

## Windows (Git Bash)

### Install Oh My Posh

Install oh-my-posh with PowerShell:
```shell
winget install JanDeDobbeleer.OhMyPosh -s winget
```
This will install oh-my-posh at `C:\Users\user\AppData\Local\Programs\oh-my-posh\bin`

### Install a Nerd Font

Install a nerd font (*meslo*) with oh-my-posh (PowerShell):
```shell
oh-my-posh font install meslo
```

To configure the Windows Terminal to use the installed font, open the Windows Terminal settings (`ctrl+shift+,`) and in your settings.json file, add the font.face attribute under the defaults attribute in profiles:
```json
{
  "profiles": {
    "defaults": {
      "font": {
        "face": "MesloLGM Nerd Font"
      }
    }
  }
}
```

### Configure the Shell

Add the following to `~/.bashrc` to initialize oh-my-posh and configure pinktoepro as the theme:
```shell
eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/samuelbmarks/dotfiles/main/oh-my-posh/pinktoe.omp.json)"
```
Restart the shell for the changes to take effect.
