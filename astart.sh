#!/bin/sh
acode_ls="/data/data/com.termux/files/usr/bin/acode-ls"
startIntent(){
  am startservice --user 0 -n com.termux/com.termux.app.RunCommandService \
-a com.termux.RUN_COMMAND \
--es com.termux.RUN_COMMAND_PATH "$1" \
--es com.termux.RUN_COMMAND_WORKDIR '/data/data/com.termux/files/home' \
--ez com.termux.RUN_COMMAND_BACKGROUND 'false' \
--es com.termux.RUN_COMMAND_SESSION_ACTION "$2"
}

startIntent "$acode_ls" "10"
am start --user 0 -n com.foxdebug.acode/.MainActivity
axs
