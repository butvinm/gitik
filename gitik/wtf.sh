#!/bin/bash
gitik_dir=$(dirname "$(readlink -f "$0")")

source "$gitik_dir/_constants.sh"
source "$gitik_dir/_state.sh"
source "$gitik_dir/_chs.sh"

branch=$(get_working_branch)
commit=$(get_head_commit)

echo -e "On branch ${BLUE}$branch${NC}"
echo -e "HEAD is ${BLUE}$commit${NC}"
echo -e ""

changes=$(diff -r . ".gitik/$branch/$commit" --exclude=.gitik --brief \
    | sort -r \
    | grep -v $(get_grep_ignore) \
    | sed -E -e "s/^Only in \.:\s*(.*)\$/    ${GREEN}new file:\t\1${NC}/" \
             -e "s/^Only in \.gitik.+:\s*(.*)\$/    ${RED}deleted:\t\1${NC}/" \
             -e "s/^Files (.*) and .* differ$/    ${YELLOW}modified:\t\1${NC}/"
)

if [ -z "$changes" ]; then
    echo "No changes"
else
    echo "Changes:"
    echo "$changes"
fi
