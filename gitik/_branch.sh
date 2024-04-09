#!/bin/bash

# $1 - branch name
is_branch_exists() {
    test -d ".gitik/$1"
}

# $1 - branch name
# $2 - commit number
is_commit_exists() {
    test -d ".gitik/$1/$2"
}

# $1 - branch name
init_branch() {
    mkdir ".gitik/$1"
}

ls_branches() {
    ls -d1 ".gitik"/*/ \
    | sed -E "s/^\.gitik\/([[:alnum:]-]+)\/\$/\1/"
}


# $1 - branch name
get_latest_commit() {
    ls ".gitik/$1" | sort -r | head -n 1
}

# $1 - source branch
# $2 - dest branch
clone_commits() {
    rsync -av --quiet ".gitik/$1/" ".gitik/$2" --exclude .gitik
}

# $1 - working branch
# $2 - commit number
commit_changes() {
    rsync -av --quiet . ".gitik/$1/$2" --exclude .gitik
}


# $1 - branch name
# $2 - commit number
restore_commit() {
    shopt -s extglob
    ls -A1 | grep -xv ".gitik" | xargs rm -rf
    rsync -av --quiet ".gitik/$1/$2/" . --exclude .gitik
}
