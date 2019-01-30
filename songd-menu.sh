#!/bin/bash

#=====================================================
# Function to display a visual menu
# Navigation using j,k
# Selection using [ENTER] (and [TAB] apparently)
# Also, optional heading
#=====================================================

HEADING=""

 menu() {
    local items=("$@")
    # the selector
    local sel=0

    # number of elements
    local n=${#items[*]}

    if (( $n == 0 )); then
        return 255
    fi

    # revert the comma space hack

    # Explanation:
    # Passing arrays to function is a pain
    # When the elements have spaces inside them, it is almost impossible to do it correctly
    # So, I replaced ' ' with ','. ',' can't appear in any of my fields
    # So, this takes care of the problem

    for (( i=0; $i<$n; i++ )); do
        items[$i]="$( echo ${items[$i]} | tr ',' ' ' )"
    done

    # function for displaying the list with selections
    disp() {
        clear
        printf "\t %s\n\n" "$HEADING"
        printf "\t %s\n" "Use j,k for navigation"
        printf "\t %s\n" "Press enter when you are done"
        echo
        for (( i=0; i<$n; i++ )); do
            if (( $i==$sel )); then
                ch=*
            else
                ch=' '
            fi

            printf "\t\t %c %s\n" "$ch" "${items[$i]}"
        done
    }

    # dummy value to get the loop started
    local key="x"

    # loop to capture input
    while [[ $key != "" ]]; do
        disp
        read -p "${items[$sel]}" -s -n 1 key

        case $key in
            "j" )
                if (( $sel < $n-1 )); then
                    sel=$((sel + 1))
                    disp
                fi ;;
            "k" )
                if (( $sel > 0 )); then
                    sel=$((sel - 1))
                    disp
                fi ;;
        esac
    done

    echo
    # misuse but okay
    return $sel
}

heading() {
    HEADING="$1"
}

