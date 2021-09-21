# Mikrotik auto update upgrade

### Setings script
Change in script BotId and ChatId on your own Telegram Bot ID and Chat ID 

```
#####
# telegram setings 
#####
:local BotId "xxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
:local ChatId "xxxxxx";
```

Set your email address
```
#####
# email setings
#####
:local Mail xxxxxxxxxxxxxxx;
```

Edit this parameters default 
```
#####
# script setings
#####
:local SendStatus true;
:local TasckUpgrade true;
:local AutoUpdate true;
:local SendBackup false;
```

SendStatus - send notification to telegram 

TasckUpgrade - run task auto update packages 

TasckUpgrade - run task auto upgrade core firmware

SendBackup - backup to email

### Automate install from console 

```
/tool fetch url="https://raw.githubusercontent.com/maximmum521/Mikrotik-auto-update-upgrade/main/script.rsc"
```
```
import script.rsc
```
```
/file remove script.rsc
```  
    
### Manual install

Make in "/system script"
 - [UpdateUpgrade](https://raw.githubusercontent.com/maximmum521/Mikrotik-auto-update-upgrade/main/UpdateUpgrade) 
 - [AfterUpgrade](https://raw.githubusercontent.com/maximmum521/Mikrotik-auto-update-upgrade/main/AfterUpgrade) 
 - [SendBackup](https://raw.githubusercontent.com/maximmum521/Mikrotik-auto-update-upgrade/main/SendBackup) 

Generate periodic task in "/system scheduler" run script UpdateUpgrade
