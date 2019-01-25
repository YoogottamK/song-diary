showHelp() {
    echo 'Usage: songd [--add [ARGS]] [--del [ARGS]] [--edit [ARGS]] [--view [ARGS]] [--field [ARGS]] [-h, --help]'

    HELP_ADD=$( cat <<-END
   --add: Add songs to the diary

          If no arguments provided, input is taken in an interactive manner

          Arguments for add:

          -t, --title title[reqd]: Specify the title of the song

          -a, --artist artist: Specify the artist of the song

          -g, --genre genre: Specify the genre of the song

          -y, --year year: Specify the year of release of the song

          -p, --path path: Specify path to the local audio file

          --cf* value: Specify the value for custom fields added by user.  Check the field section for more details
END
    )

    HELP_DEL=$( cat <<-END
   --del: Delete songs from the diary

          If no arguments given, opens up an interactive menu for you to select the song to delete

          Arguments for del:

          -i, --index index: Provide the index of the song to delete
END
    )

    HELP_EDIT=$( cat <<-END
   --edit: Edit the existing entries in the diary

          If no arguments given, opens up an interactive menu for you to select the song to edit

          Arguments for del:

          -i, --index index: Provide the index of the song to edit
END 
    )

    HELP_VIEW=$( cat <<-END
   --view: View the songs present in the diary. Optional arguments to filter the songs

          Arguments for view (Supports [*.] matching and more):

          -t, --title title: Filter by the title of the song

          -a, --artist artist: Filter by the artist of the song

          -g, --genre genre: Filter by the genre of the song

          -y, --year year: Filter by year of release of the song

          -p, --path path: Filter by path to the local audio file

          --cf* value: Filter by value for custom fields added by user.  Check the field section for more details
END
    )

    HELP_FIELD=$( cat <<-END
   --field: Manage custom fields for Song Diary.  The default fields not enough? No problem.  Add your own fields using this

          Arguments for field:

          -a, --add name: Add a new field with name name

          -d, --delete: Delete a custom field.  Opens an interactive menu to select which field to delete

          -v, --view: List out all the custom fields and how to access them
END
    )

    echo "$HELP"
    exit 0;
}


