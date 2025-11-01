# ░█▄█░█▀█░▀█▀░█░█░█▀▀░█▀▀░█▀█░░░░░░░░░▀▀█░█▀▀░█░█
# ░█░█░█▀█░░█░░█░█░█░█░█▀▀░█░█░░░▄▄▄░░░▄▀░░▀▀█░█▀█
# ░▀░▀░▀░▀░░▀░░▀▀▀░▀▀▀░▀▀▀░▀░▀░░░░░░░░░▀▀▀░▀▀▀░▀░▀

# Fzf colors
export FZF_DEFAULT_OPTS=" \
--style full \
--preview 'bat --color=always {}' --bind 'focus:transform-header:file --brief {}' \
--color=bg+:#3c3930,bg:#16130b,spinner:#ffb4ab,hl:#d2c6a1 \
--color=fg:#e9e2d4,header:#d2c6a1,info:#aad0b2,pointer:#ffb4ab \
--color=marker:#dcc66e,fg+:#e9e2d4,prompt:#aad0b2,hl+:#d2c6a1 \
--color=selected-bg:#dcc66e \
--color=border:#969080,label:#e9e2d4 \
--multi"


# Aloxaf fzf - tab
zstyle ':fzf-tab:*' fzf-flags --color=bg+:#3c3930,bg:#16130b,spinner:#ffb4ab,hl:#d2c6a1,fg:#e9e2d4,header:#d2c6a1,info:#aad0b2,pointer:#ffb4ab,marker:#dcc66e,fg+:#e9e2d4,prompt:#aad0b2,hl+:#d2c6a1,selected-bg:#dcc66e,border:#969080,label:#e9e2d4 --multi
