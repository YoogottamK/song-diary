#!/bin/bash

#=====================================================
# Set up the directory for storage if not present
#=====================================================
DIR="$HOME/.config/songd"
HEADERS="$DIR/headers.csv"
DATA="$DIR/db.csv"

[ -d "$DIR" ] || mkdir -p "$DIR"
[ -e "$HEADERS" ] || touch "$HEADERS"
[ -e "$DATA" ] || touch "$DATA"

#=====================================================
# Check PATH, create dir, add to PATH
# Assuming end user uses bash
#=====================================================
BIN="$HOME"/bin
[ -d "$BIN" ] || echo Creating "$BIN"...; mkdir -p "$BIN"

if [[ ":$PATH:" != *":$HOME/bin:"* ]]; then
    echo Your PATH doesn\'t contain "$BIN"
    echo Adding "$BIN" to PATH...
    echo 'export $PATH=$PATH:'"$BIN" >> "$HOME/.bashrc"
    echo run 'source ~/.bashrc' to reflect changes
fi

#=====================================================
# Set up the columns, if reqd
#=====================================================
if [ ! -s "$HEADERS" ]; then
    echo "id,title,artist,genre,year,localpath" > "$HEADERS"
fi

#=====================================================
# Begin the actual process
#=====================================================
FILES=( songd songd-add songd-del songd-edit songd-field songd-view songd-menu.sh songd-help.sh )
# MAN="songd.1"
for file in ${FILES[@]}; do
    [ -e ./$file ] || { (>&2 echo File "$file" not found); (>&2 echo Aborting); exit 1; }
    cp "./$file" "$BIN"
    chmod +x "$BIN/$file"
done

# Reached here => all is well
echo Setup succesfully completed.
echo You can start using songd

