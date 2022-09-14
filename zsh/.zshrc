# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.zshlogs
HISTSIZE=100000
SAVEHIST=$HISTSIZE

setopt autocd extendedglob
bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/vugz/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /home/vugz/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/vugz/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
source /home/vugz/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zfuncs

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh/powerlevel10k/.p10k.zsh ]] || source ~/.config/zsh/powerlevel10k/.p10k.zsh
