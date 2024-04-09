#!/bin/bash

# $1 - working branch
# $2 - commit number
save_changes() {
    rsync -av --quiet --progress . ".gitik/$1/$2" --exclude .gitik
}
