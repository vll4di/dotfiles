#!/bin/sh

# The directory you want to watch (e.g., your dwm folder)
 TARGET_DIR="$1"

 if [ -z "$TARGET_DIR" ]; then
     echo "Usage: autocomp.sh [directory]"
         exit 1
         fi

         cd "$TARGET_DIR" || exit

         # List all .h and .c files and pipe them into entr
         # When a file changes, it runs sudo make clean install
         ls config.h *.c | entr -p sudo make clean install
