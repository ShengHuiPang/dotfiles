HISTFILE=~/.cache/zsh/history
HISTSIZE=10000
SAVEHIST=10000
TerminalEmulator=alacritty

autoload -U compinit; compinit
[ -f /usr/share/zsh/plugins/fzf-tab-git/fzf-tab.zsh ] && source /usr/share/zsh/plugins/fzf-tab-git/fzf-tab.zsh
[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.zsh ] && source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.zsh
[ -f /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh ] && source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh
[ -f /usr/share/zsh/plugins/zsh-auto-notify/auto-notify.plugin.zsh ] && source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh


[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"


if [ -n "$DISPLAY" ] || [ -n "$WAYLAND_DISPLAY" ]; then
    # To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
    [[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
    source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
else
    PS1="%F{green}%n%f@%F{blue}%m %F{yellow}%~ %F{white}%% %f"
fi


eval "$(zoxide init zsh)"




fastfetch

