#!/bin/bash
var=$USER
launchctl unload -w /Users/$var/Library/LaunchAgents/Dynamic_Walls.Scheduler.plist
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">
<plist version=\"1.0\">
	<dict>
		<key>Label</key>
		<string>Dynamic_Walls.Scheduler</string>
		<key>Program</key>
        	<string>/usr/bin/osascript</string>
        	<key>ProgramArguments</key>
        	<array>
                	<string>osascript</string>
			<string>$DIR/Dynamic_Walls.scpt</string>
		</array>
		<key>RunAtLoad</key>
		<true/>
		<key>KeepAlive</key>
		<true/>
		<key>StartInterval</key>
		<integer>150</integer>
	</dict>
</plist>" > /Users/$var/Library/LaunchAgents/Dynamic_Walls.Scheduler.plist

sleep 2

launchctl load -w /Users/$var/Library/LaunchAgents/Dynamic_Walls.Scheduler.plist

osascript -e 'tell app "Terminal"' -e 'close (every window whose name contains ".command")' -e 'if number of windows = 0 then quit' -e 'end tell' & exit;