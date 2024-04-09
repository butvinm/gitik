#!/bin/bash
gitik_dir=$(dirname "$(readlink -f "$0")")

source "$gitik_dir/_state.sh"
source "$gitik_dir/_files.sh"

if [ -d .gitik ]; then
    echo "Local repository has already been initialized."
else
    echo "Input your name, so colleagues could friendly greet you:"
    read name

    echo "Input your email, so colleagues could gently ask you for help:"
    read email

    echo "Input your home address, so colleagues could come and kick your fucking ass in case you push shitty code into master:"
    read address

    mkdir .gitik
    echo "$name <$email> $address" >> .gitik/user

    branch="master"
    commit="0"

    mkdir ".gitik/$branch"
    save_changes $branch $commit

    save_state $branch $commit

    echo "Repository has been initialized succesfully!"
fi
