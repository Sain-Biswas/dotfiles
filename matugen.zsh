# ░█▄█░█▀█░▀█▀░█░█░█▀▀░█▀▀░█▀█░░░░░░░░░▀▀█░█▀▀░█░█
# ░█░█░█▀█░░█░░█░█░█░█░█▀▀░█░█░░░▄▄▄░░░▄▀░░▀▀█░█▀█
# ░▀░▀░▀░▀░░▀░░▀▀▀░▀▀▀░▀▀▀░▀░▀░░░░░░░░░▀▀▀░▀▀▀░▀░▀

# Fzf colors
export FZF_DEFAULT_OPTS=" \
--style full \
--preview 'bat --color=always {}' --bind 'focus:transform-header:file --brief {}' \
--color=bg+:#343a39,bg:#0e1514,spinner:#ffb4ab,hl:#b0ccc8 \
--color=fg:#dde4e2,header:#b0ccc8,info:#afc9e7,pointer:#ffb4ab \
--color=marker:#81d5cd,fg+:#dde4e2,prompt:#afc9e7,hl+:#b0ccc8 \
--color=selected-bg:#81d5cd \
--color=border:#899391,label:#dde4e2 \
--multi"


# Aloxaf fzf - tab
zstyle ':fzf-tab:*' fzf-flags --color=bg+:#343a39,bg:#0e1514,spinner:#ffb4ab,hl:#b0ccc8,fg:#dde4e2,header:#b0ccc8,info:#afc9e7,pointer:#ffb4ab,marker:#81d5cd,fg+:#dde4e2,prompt:#afc9e7,hl+:#b0ccc8,selected-bg:#81d5cd,border:#899391,label:#dde4e2 --multi
