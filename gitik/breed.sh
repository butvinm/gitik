#!/bin/bash
gitik_dir=$(dirname "$(readlink -f "$0")")

source "$gitik_dir/_constants.sh"
source "$gitik_dir/_state.sh"
source "$gitik_dir/_branch.sh"

if [ $# -ne 1 ]; then
    echo "Usage: $0 <branch name>"
    exit 1
fi

if is_branch_exists $1; then
    echo "Branch already exists"
    exit 1
fi

init_branch $1

branch=$(get_working_branch)
commit=$(get_head_commit)

clone_commits $branch $1

save_state $1 $commit
