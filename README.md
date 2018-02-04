# FX Server Restart

This script is designed to be run using cronjobs on Linux

# Requirements

`basic knowledge of linux`
`crontab`
`fxserver`

# Install Instructions

1. Put file into the base directory of the fx server.
2. Edit the server_restart.sh and name the screen session whatever you want it to be.
3. Make the script executable `chmod u+x server_restart.sh`
4a. If your server is already running, run the script to restart it and make sure you have installed it right - Server should stop and restart. 
4b. If your server is not running, Run the script - Server should start a new screen session named after what you have put the the file you edited.
5. Edit the servers cronjobs `crontab -e` and add this line to the bottom.

`0 12 * * * cd /location to/server && ./restart_server.sh`
This will restart your server at midnight everyday, you can change the time and add another line with another time if you would like restarts more frequently

6. Sit back, relax and not have to worry about manually restarting the server.

# Do not run on a system that is using more than one screen

If you have any other services you think may need restarting on a FX server restart put in a pull request.
