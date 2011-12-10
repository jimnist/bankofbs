#!/bin/sh
# run development server for middleman
#
PATHDIR=`pwd`

/usr/bin/osascript <<EOF
activate application "Terminal"
tell application "System Events"
    keystroke "t" using {command down}
end tell
tell application "Terminal"
    repeat with win in windows
        try
            if get frontmost of win is true then
                do script "cd $PATHDIR" in (selected tab of win)
                do script "clear" in (selected tab of win)
                do script "rvm gemset use middleman" in (selected tab of win)
                do script "bundle install" in (selected tab of win)
                do script "middleman server -p 5678 --livereload" in (selected tab of win)
            end if
        end try
    end repeat
end tell
EOF
clear
