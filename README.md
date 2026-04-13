# Configurations and scripts files

Folder with config and script files for me.

## Git

### Aliases

```console
$ git config --global alias.st status
$ git config --global alias.co checkout
$ git config --global alias.lo 'log --oneline --graph'
```

## Bash

### Command prompt

Setup info from git
```bash
__git_ps1() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

git_prompt_color='\[\033[1;31m\]$(__git_ps1)\[\033[0m\]'
git_prompt='$(__git_ps1)'
```

Define `PS1` (in if-then-else with color check)
```bash
# If color available
PS1='${debian_chroot:+($debian_chroot)}\[\033[1;32m\]\u@\h\[\033[0m\] \[\033[1;34m\]\w\[\033[0m\]'$git_prompt_color' \$ '
# else
PS1='${debian_chroot:+($debian_chroot)}\u@\h \w'$git_prompt' \$ '
```

Unset git prompt variables
```bash
unset git_prompt git_prompt_color
```