#!/bin/bash

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
    rsync -av --quiet --progress . ".gitik/$branch/$commit" --exclude .gitik

    save_state $branch $commit

    echo "Repository has been initialized succesfully!"
fi
