#!/bin/bash
gitik_dir=$(dirname "$(readlink -f "$0")")

source "$gitik_dir/_constants.sh"
source "$gitik_dir/_state.sh"
source "$gitik_dir/_branch.sh"

# pls merge (src) in2 (dst) asap
if [ $# -ne 5 ]; then
    echo "Usage: $0 merge <src branch> in2 master asap"
    exit 1
fi

if [[ $1 = merge && $3 = in2 && $4 = master && $5 = asap ]]; then
    src_branch=$2
    if ! is_branch_exists $src_branch; then
        echo "Source branch does not exists"
        exit 1
    fi
    src_commit=$(get_latest_commit $src_branch)
else
    echo "Usage: $0 merge <src branch> in2 master asap"
    exit 1
fi

restore_commit $src_branch $src_commit
echo -e "Commit ${BLUE}$src_branch/$src_commit${NC} merged in2 current branch"
echo -e "Use gitik/incest.sh to save changes"
