#!/bin/bash
gitik_dir=$(dirname "$(readlink -f "$0")")

source "$gitik_dir/_constants.sh"
source "$gitik_dir/_state.sh"

branch=$(get_working_branch)
commit=$(get_head_commit)

echo -e "On branch ${BLUE}$branch${NC}"
echo -e "Latest commit is ${BLUE}$commit${NC}"
echo -e ""

echo -e "Changes:"
diff -r . .gitik/$branch/$commit --exclude=.gitik --brief \
| sort -r \
| sed -E -e "s/^Only in \.:\s*(.*)\$/    ${GREEN}new file:\t\1${NC}/" \
         -e "s/^Only in \.gitik.+:\s*(.*)\$/    ${RED}deleted:\t\1${NC}/" \
         -e "s/^Files (.*) and .* differ$/    ${YELLOW}modified:\t\1${NC}/"
