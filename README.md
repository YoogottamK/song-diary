# Song Diary

A database for songs, built using bash.

## Setup

To use this on your system
 - Clone this repository
 - Navigate to the cloned directory
 - run setup.sh

## How to use?

The main entry point is `songd`.

Almost every feature can be used without passing options.

You can also pass different options like `--add` or `--edit`, etc to songd to use cli instead of an interactive menu.

You can pass `-h` option anywhere to know how it works.

Also, you can check the man page for songd by running `man ./songd.1` in the cloned directory to know more.

## Note

This script assumes you use bash as your default shell.
If you use any other shell [for eg zsh], please create a directory named `bin` inside your home folder `~` and add it to PATH

i.e., add the following line to `.[your_shell]rc`

`export PATH="$PATH:$HOME/bin"`

