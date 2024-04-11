#!/bin/bash

CHS=".чс"

get_rsync_ignore() {
    if [[ -f $CHS ]]; then
        echo "--exclude-from $CHS"
    fi
}

get_grep_ignore() {
    if [[ -f $CHS ]]; then
        echo "--file=$CHS"
    fi
}
