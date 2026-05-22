_git_clone_worktree() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    opts="-r --relative-paths -q --quiet -h --help -v --version"

    if [[ ${cur} == -* ]] ; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    else
        # Disable default filename completion fallback
        if type compopt >/dev/null 2>&1; then
            compopt +o default
        fi
        return 0
    fi
}
complete -F _git_clone_worktree git-clone-worktree
