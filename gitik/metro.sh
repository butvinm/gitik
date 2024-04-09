#!/bin/bash
gitik_dir=$(dirname "$(readlink -f "$0")")

source "$gitik_dir/_constants.sh"
source "$gitik_dir/_state.sh"
source "$gitik_dir/_branch.sh"


if [ $# -ne 1 ]; then
    echo "Usage: $0 <branch[/commit]>"
    exit 1
fi


if [[ $1 =~ ^([[:alnum:]]+)/([[:alnum:]]+)$ ]]; then
    branch="${BASH_REMATCH[1]}"
    commit="${BASH_REMATCH[2]}"
    if ! is_commit_exists $branch $commit; then
        echo "Commit (or branch) does not exists"
        exit 1
    fi
elif [[ $1 =~ ^([[:digit:]]+)$ ]]; then
    branch=$(get_working_branch)
    commit="${BASH_REMATCH[1]}"
    if ! is_commit_exists $branch $commit; then
        echo "Commit does not exists"
        exit 1
    fi
elif [[ $1 =~ ^([[:alnum:]_-]+)$ ]]; then
    branch="${BASH_REMATCH[1]}"
    if ! is_branch_exists $branch; then
        echo "Branch does not exists"
        exit 1
    fi
    commit=$(get_latest_commit $branch)
else
    echo "Usage: $0 <branch[/commit]>"
    exit 1
fi

restore_commit $branch $commit
save_state $branch $commit

echo -e "Switched to ${BLUE}$branch/$commit${NC}"