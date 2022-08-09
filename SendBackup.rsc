#####
# e-mail setings
#####
/system script run ScriptSetings;
:global Mail;
:global BackText;
#####
# job
#####
/export file=backup;
/system backup save name=backup;
:delay 5s;
/tool e-mail send to=$Mail \
subject="BACKUP $[/system clock get date]" \
body="$[/system identity get name] \n$[/system routerboard get model] \n$BackText"\
file=backup.backup,backup.rsc;
:delay 5s;
/file remove backup.backup;
/file remove backup.rsc;