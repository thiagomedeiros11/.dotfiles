export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"  # tema leve e simples do Oh My Zsh

plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-completions)

source $ZSH/oh-my-zsh.sh

# fzf
source <(fzf --zsh)

# Angular CLI completion
source <(ng completion script)

# ───────────────────────────────
# Rosé Pine Theme for Zsh
# ───────────────────────────────
source ~/.config/zsh/rose-pine-zsh/rose-pine-zsh.zsh
colorize_zsh "rose-pine"  # ou "rose-pine-moon", "rose-pine-dawn"

# Prompt com cores Rosé Pine (substitui o prompt padrão do Zsh)
COLOR_POST=$(term16m_set_color ${TERM16M_BASE} ${TERM16M_IRIS})
COLOR_AT=$(term16m_set_color ${TERM16M_BASE} ${TERM16M_MUTED})
COLOR_DIR=$(term16m_set_color ${TERM16M_OVERLAY} ${TERM16M_GOLD})
COLOR_PMPT=$(term16m_set_color ${TERM16M_BASE} ${TERM16M_ROSE})
COLOR_CMD=$(term16m_set_color ${TERM16M_BASE} ${TERM16M_TEXT})

PROMPT="${COLOR_DIR}%~ ${COLOR_PMPT}❯ ${COLOR_CMD}"
