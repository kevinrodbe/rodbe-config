export FZF_DEFAULT_OPTS="--reverse --multi --inline-info --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='right:hidden:wrap' --bind='f3:execute(bat {} || less -f {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy)'"

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# TODO: exec from FZF_DEFAULT_COMMAND
# _fzf_compgen_path() {
#   fd --hidden --exclude .git . "$1"
# }

# _fzf_compgen_dir() {
#   fd --type=d --hidden --exclude .git . "$1"
# }

source $HOME/fzf-git.sh/fzf-git.sh
