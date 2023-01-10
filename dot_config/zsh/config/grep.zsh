# Setup grep to be a bit more nice
# check if 'x' grep argument available
 grep-flag-available() {
       echo | grep $1 "" >/dev/null 2>&1
 }

 local GREP_OPTIONS=""

 # color grep results
 if grep-flag-available --color=auto; then
       GREP_OPTIONS+=" --color=auto"
 fi

 # ignore VCS folders (if the necessary grep flags are available)
 local VCS_FOLDERS="{.bzr,CVS,.git,.hg,.svn}"
 local JS_FOLDERS="{bower_components,node_modules}"


 if grep-flag-available --exclude-dir=.cvs; then
       GREP_OPTIONS+=" --exclude-dir=$VCS_FOLDERS --exclude-dir=$JS_FOLDERS"
 elif grep-flag-available --exclude=.cvs; then
       GREP_OPTIONS+=" --exclude=$VCS_FOLDERS --exclude=$JS_FOLDERS"
 fi

 # export grep settings
 alias grep="grep $GREP_OPTIONS"

 # clean up
 unfunction grep-flag-available
