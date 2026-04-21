export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY HIST_IGNORE_DUPS HIST_IGNORE_SPACE

# Tab completion
autoload -Uz compinit && compinit

eval "$(zoxide init zsh)"
# ────────────────────────────────────────────────────────────────────────────────────

[[ -f ~/.aliases ]] && source ~/.aliases

# ────────────────────────────────────────────────────────────────────────────────────
# Change Directory with fzf
# Requires: fd
cd_to_dir() {
  local dir
  dir=$(fd -t d . "${1:-.}" | fzf +m --height 50% --preview 'tree -C {}')
  [[ -n $dir ]] && cd "$dir"
}
alias cdl='cd_to_dir'
# ────────────────────────────────────────────────────────────────────────────────────
cds() {
  # Search roots: your home + mounted volumes (not /System, /Library, etc.)
  local roots=("$HOME" "/Volumes")

  # Choose a preview that works even if `tree` isn't installed
  local preview='command -v tree >/dev/null && tree -C {} | head -200 || ls -la {}'

  # Fuzzy-pick a directory (skips hidden by default, and prunes common junk)
  local dir
  dir=$(
    fd -t d . "${roots[@]}" \
      --exclude .git --exclude node_modules --exclude vendor \
      --exclude dist --exclude build --exclude __pycache__ \
      2>/dev/null | fzf +m --height 50% --preview "$preview"
  )

  [[ -n $dir ]] && cd "$dir"
}
# ────────────────────────────────────────────────────────────────────────────────────
# zi(): Fuzzy-pick from zoxide's known dirs and cd into it
zi() {
  local dir
  dir=$(zoxide query -l | \
        fzf --ansi --preview 'eza -laF --color=always {}')
  [[ -n $dir ]] && z "$dir"
}


# ────────────────────────────────────────────────────────────────────────────────────
autoload -Uz colors && colors        # enable %F / %f colors

# %n = user, %m = host (first component), %~ = cwd, %# = % or #
PROMPT='%F{cyan}%~%f '
# RPROMPT='%F{yellow}%D{%I:%M %p}%f'          # right-side clock (optional)

