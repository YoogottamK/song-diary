# Song Diary

This is basically a database for songs, built on bash.

## Setup

To use this on your system
 - Clone this repository
 - Navigate to the cloned directory
 - run setup.sh

## How to use?

The main entry point is `songd`.

Almost every feature can be used without passing options.

Then, you can pass different options like `--add` or `--edit`, etc.

You can pass `-h` option anywhere to know how exactly this works.

Also, you can check the man page for songd [`man songd`] to know more

## Note

This script assumes you use bash as your default shell.
If you use any other shell [for eg zsh], please create a directory named `bin` inside your home folder `~` and add it to PATH

i.e., add the following line to `.[your_shell]rc`

`export PATH="$PATH:$HOME/bin"`
