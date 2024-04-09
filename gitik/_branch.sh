#!/bin/bash

# $1 - branch name
is_branch_exists() {
    test -d ".gitik/$1"
}

# $1 - branch name
init_branch() {
    mkdir ".gitik/$1"
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
