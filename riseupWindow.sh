#
# appunto per riseup window 

#

# if no instance of the app has been started, launch one now
if [ -z "`wmctrl -lx | grep -i $CMD`" ]; then
$CMD &
else
# search for existing app on any desktop and move it to the current desktop
app_on_any_desk=`wmctrl -lx | grep -i $CMD | cut -d ' ' -f 1`
wmctrl -i -R $app_on_any_desk
fi;

# da affinare nel grep dell CMD
