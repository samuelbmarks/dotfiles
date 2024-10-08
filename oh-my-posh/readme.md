# Oh My Posh

Configuration and quickstart guide for [oh-my-posh](https://ohmyposh.dev/) using my custom [pinktoepro](https://github.com/samuelbmarks/dotfiles/blob/main/oh-my-posh/pinktoepro.omp.json) theme.

This will show you how to quickly install and get started using Oh My Posh for the following operating systems and tools:

| Operating System | Shell                             | Terminal App (Preferred) |
|------------------|-----------------------------------|--------------------------|
| Windows          | [Git Bash](#Windows-Git-Bash)     | Windows Terminal         |
| Windows          | [PowerShell](#Windows-PowerShell) | Windows Terminal         |
| MacOS            | [zsh](#MacOS-zsh)                 | iTerm2                   |
| MacOS            | [bash](#MacOS-bash)               | iTerm2                   |

For full documentation, see the [Oh My Posh Docs](https://ohmyposh.dev/docs).

## Windows (PowerShell)

### Install Oh My Posh

Install oh-my-posh with PowerShell:
```shell
winget install JanDeDobbeleer.OhMyPosh -s winget
```
This will install oh-my-posh at `C:\Users\user\AppData\Local\Programs\oh-my-posh\bin`

### Install a [Nerd Font](https://github.com/ryanoasis/nerd-fonts)

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

## MacOS (zsh)

More details to come.

## MacOS (bash)

More details to come.
