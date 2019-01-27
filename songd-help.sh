showHelp() {
    HELP_ADD=$( cat <<-ADD_END


   --add: Add songs to the diary

          If no arguments provided, input is taken in an interactive manner

          Arguments for add:

          -t, --title title[reqd]: Specify the title of the song

          -a, --artist artist: Specify the artist of the song

          -g, --genre genre: Specify the genre of the song

          -y, --year year: Specify the year of release of the song

          -p, --path path: Specify path to the local audio file

          --cf* value: Specify the value for custom fields added by user.  Check the field section for more details
ADD_END
    )

    HELP_DEL=$( cat <<-DEL_END


   --del: Delete songs from the diary

          If no arguments given, opens up an interactive menu for you to select the song to delete

          Arguments for del:

          -i, --index index: Provide the index of the song to delete
DEL_END
    )

    HELP_EDIT=$( cat <<-EDIT_END


   --edit: Edit the existing entries in the diary

          If no arguments given, opens up an interactive menu for you to select the song to edit

          Arguments for del:

          -i, --index index: Provide the index of the song to edit
EDIT_END
    )

    HELP_VIEW=$( cat <<-VIEW_END


   --view: View the songs present in the diary. Optional arguments to filter the songs

          Arguments for view (Supports [*.] matching and more):

          -t, --title title: Filter by the title of the song

          -a, --artist artist: Filter by the artist of the song

          -g, --genre genre: Filter by the genre of the song

          -y, --year year: Filter by year of release of the song

          -p, --path path: Filter by path to the local audio file

          --cf* value: Filter by value for custom fields added by user.  Check the field section for more details
VIEW_END
    )

    HELP_FIELD=$( cat <<-FIELD_END


   --field: Manage custom fields for Song Diary.  The default fields not enough? No problem.  Add your own fields using this

          Arguments for field:

          -a, --add name: Add a new field with name name

          -d, --delete: Delete a custom field.  Opens an interactive menu to select which field to delete

          -v, --view: List out all the custom fields and how to access them
FIELD_END
    )

    HELP_ALL=( "$( cat <<-USAGE_END
Usage: songd [--add [ARGS]] [--del [ARGS]] [--edit [ARGS]] [--view [ARGS]] [--field [ARGS]] [-h, --help]
USAGE_END
    )" )
    HELP_ALL+=( "$HELP_ADD" "$HELP_DEL" "$HELP_EDIT" "$HELP_FIELD" "$HELP_VIEW" )

    case "$1" in
        1 )
            echo "$HELP_ADD" ;;
        2 )
            echo "$HELP_DEL" ;;
        3 )
            echo "$HELP_EDIT" ;;
        4 )
            echo "$HELP_VIEW" ;;
        5 )
            echo "$HELP_FIELD" ;;
        * )
            echo "${HELP_ALL[@]}" ;;
    esac
}

