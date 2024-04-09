#!/bin/bash
gitik_dir=$(dirname "$(readlink -f "$0")")

source "$gitik_dir/_constants.sh"
source "$gitik_dir/_state.sh"
source "$gitik_dir/_files.sh"

branch=$(get_working_branch)
commit=$(get_head_commit)

new_commit=$(expr $commit + 1)
save_changes $branch $new_commit

save_state $branch $new_commit

echo -e "Commit ${BLUE}$new_commit${NC} has been created"
