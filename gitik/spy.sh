#!/bin/bash
gitik_dir=$(dirname "$(readlink -f "$0")")

source "$gitik_dir/_constants.sh"
source "$gitik_dir/_state.sh"
source "$gitik_dir/_branch.sh"

branch=$(get_working_branch)

ls_branches  \
| sed "s/$branch/${GREEN}* &${NC}/"
