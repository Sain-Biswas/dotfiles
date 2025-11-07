# ░█▄█░█▀█░▀█▀░█░█░█▀▀░█▀▀░█▀█░░░░░░░░░▀▀█░█▀▀░█░█
# ░█░█░█▀█░░█░░█░█░█░█░█▀▀░█░█░░░▄▄▄░░░▄▀░░▀▀█░█▀█
# ░▀░▀░▀░▀░░▀░░▀▀▀░▀▀▀░▀▀▀░▀░▀░░░░░░░░░▀▀▀░▀▀▀░▀░▀

# Fzf colors
export FZF_DEFAULT_OPTS=" \
--style full \
--preview 'bat --color=always {}' --bind 'focus:transform-header:file --brief {}' \
--color=bg+:#38393f,bg:#121318,spinner:#ffb4ab,hl:#c0c6dc \
--color=fg:#e2e2e9,header:#c0c6dc,info:#e0bbdd,pointer:#ffb4ab \
--color=marker:#b1c5ff,fg+:#e2e2e9,prompt:#e0bbdd,hl+:#c0c6dc \
--color=selected-bg:#b1c5ff \
--color=border:#8f9099,label:#e2e2e9 \
--multi"


# Aloxaf fzf - tab
zstyle ':fzf-tab:*' fzf-flags --color=bg+:#38393f,bg:#121318,spinner:#ffb4ab,hl:#c0c6dc,fg:#e2e2e9,header:#c0c6dc,info:#e0bbdd,pointer:#ffb4ab,marker:#b1c5ff,fg+:#e2e2e9,prompt:#e0bbdd,hl+:#c0c6dc,selected-bg:#b1c5ff,border:#8f9099,label:#e2e2e9 --multi
