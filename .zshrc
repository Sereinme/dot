# alias
alias ls="lsd"
alias cat="bat"

# zinit
source $HOMEBREW_PREFIX/opt/zinit/zinit.zsh

# starship
zinit ice wait"!" lucid as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship

# zoxide
zinit wait'1' lucid \
	from"gh-r" as"program" pick"zoxide-*/zoxide" \
	atclone"./zoxide init zsh > init.zsh" \
	atpull"%atclone" src"init.zsh" \
	light-mode for @ajeetdsouza/zoxide

# zsh-autosuggestion
zinit ice wait"1" lucid
zinit light zsh-users/zsh-autosuggestions

# zsh-completion
zinit ice wait"1" lucid
zinit light zsh-users/zsh-completions

# fast-syntax-highlighting
zinit ice wait lucid
zinit light zdharma-continuum/fast-syntax-highlighting
