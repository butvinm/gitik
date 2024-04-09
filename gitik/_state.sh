#!/bin/bash

get_working_branch() {
    head .gitik/state -n 1 | tail -n 1
}

get_head_commit() {
    head .gitik/state -n 2 | tail -n 1
}

# $1 - working branch
# $2 - head commit
save_state() {
    echo $1 > .gitik/state
    echo $2 >> .gitik/state
}
