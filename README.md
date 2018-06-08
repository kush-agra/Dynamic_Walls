# Dynamic_Walls

*Alpha*

Experimental script to replicate MacOS Mojave's dynamic wallpapers feature

Uses [Sunrise-Sunset api](https://sunrise-sunset.org/api) to get the sunrise and sunset times of current location received by the [LocateMe](http://iharder.sourceforge.net/current/macosx/locateme/) command line tool 

>LocateMe is a Public Domain command-line tool that lets you find your location (latitude, longitude, etc) using Apple's geolocation services.

The wallpapers were extracted from the HEIC file from the Mojave beta

A cronjob is set up to ensure the script runs at intervals to be able to change the wallpaper

# Set Up

1. Download and extract the [zip containing all the wallpaper files](https://mega.nz/#!UxxyVKJT!4Kn3ilScP2FALnbR3mG3G6I7gDpm7ZE8lGEGU1hGEG0)
extract it directly or copy the extracted folder to the directory `/Users/<Username>/Pictures/Wallpapers` create the Wallpapers directory if it doesn't exist, confirm that the pictures are in the *mojave_dynamic* directory

2. Download the github repo as zip and place all files in the above Wallpapers directory

3. Last we need to set up a corn job

Start the terminal and the use nano to edit thejob list like so 

```env EDITOR=nano crontab -e```

Then write

```*/5 * * * * /usr/bin/osascript ~/Pictures/Wallpapers/Dynamic_Wallpapers1.3.scpt```

and press control + o and then enter to write to the file and then control + x to exit out of nano

and we're done, Advantage of this is with minor tweaking we can use custom wallpapers too which Apple being Apple won't give us the option to.

will be working on making it so that even the minor tweaking is not needed for customisability
