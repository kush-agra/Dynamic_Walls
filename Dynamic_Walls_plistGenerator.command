#!/bin/bash
var=$USER
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">
<plist version=\"1.0\">
	<dict>
		<key>Label</key>
		<string>wallpaper</string>
		<key>Program</key>
        	<string>/usr/bin/osascript</string>
        	<key>ProgramArguments</key>
        	<array>
                	<string>osascript</string>
			<string>/Users/$var/Pictures/Wallpapers/Dynamic_Walls.scpt</string>
		</array>
		<key>RunAtLoad</key>
		<true/>
		<key>KeepAlive</key>
		<true/>
		<key>StartInterval</key>
		<integer>300</integer>
	</dict>
</plist>" > /Users/$var/Library/LaunchAgents/Dynamic_walls.Scheduler.plist

sleep 2

launchctl load -w /Users/$var/Library/LaunchAgents/Dynamic_walls.Scheduler.plist

osascript -e 'tell app "Terminal"' -e 'close (every window whose name contains ".command")' -e 'if number of windows = 0 then quit' -e 'end tell' & exit;