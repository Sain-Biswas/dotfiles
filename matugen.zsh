# ░█▄█░█▀█░▀█▀░█░█░█▀▀░█▀▀░█▀█░░░░░░░░░▀▀█░█▀▀░█░█
# ░█░█░█▀█░░█░░█░█░█░█░█▀▀░█░█░░░▄▄▄░░░▄▀░░▀▀█░█▀█
# ░▀░▀░▀░▀░░▀░░▀▀▀░▀▀▀░▀▀▀░▀░▀░░░░░░░░░▀▀▀░▀▀▀░▀░▀

# Fzf colors
export FZF_DEFAULT_OPTS=" \
--style full \
--preview 'bat --color=always {}' --bind 'focus:transform-header:file --brief {}' \
--color=bg+:#3a383e,bg:#141318,spinner:#ffb4ab,hl:#cac3dc \
--color=fg:#e6e1e9,header:#cac3dc,info:#edb8cc,pointer:#ffb4ab \
--color=marker:#cabeff,fg+:#e6e1e9,prompt:#edb8cc,hl+:#cac3dc \
--color=selected-bg:#cabeff \
--color=border:#938f99,label:#e6e1e9 \
--multi"


# Aloxaf fzf - tab
zstyle ':fzf-tab:*' fzf-flags --color=bg+:#3a383e,bg:#141318,spinner:#ffb4ab,hl:#cac3dc,fg:#e6e1e9,header:#cac3dc,info:#edb8cc,pointer:#ffb4ab,marker:#cabeff,fg+:#e6e1e9,prompt:#edb8cc,hl+:#cac3dc,selected-bg:#cabeff,border:#938f99,label:#e6e1e9 --multi
