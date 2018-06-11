# Dynamic_Walls

*Beta* [**See Changelog**](https://github.com/kush-agra/Dynamic_Walls#changelog)

Experimental script to replicate macOS Mojave's dynamic wallpapers feature, also sets system theme to dark/light accordingly 

Uses [Sunrise-Sunset api](https://sunrise-sunset.org/api) to get the sunrise and sunset times of current location retrieved by the [LocateMe](http://iharder.sourceforge.net/current/macosx/locateme/) command line tool 

>LocateMe is a Public Domain command-line tool that lets you find your location (latitude, longitude, etc) using Apple's geolocation services.

The wallpapers were extracted from the HEIC file from the Mojave beta

A cron job is set up to ensure the script runs at intervals to be able to change the wallpaper

# Set Up

1. Download and extract the [zip containing all the wallpaper files](https://mega.nz/#!UxxyVKJT!4Kn3ilScP2FALnbR3mG3G6I7gDpm7ZE8lGEGU1hGEG0)
extract it directly or copy the extracted folder to the directory `/Users/<Username>/Pictures/Wallpapers` create the Wallpapers directory if it doesn't exist, confirm that the pictures are in the *mojave_dynamic* directory

2. Download the github repo as zip and place all enclosed files in the above Wallpapers directory

just for reference the Wallpapers folder in the end should look something like this
![Imgur](https://i.imgur.com/TPGmeys.jpg)

3. Last we need to set up a cron job

Start the terminal and the use nano to edit the job list like so 

```env EDITOR=nano crontab -e```

Then write

```*/5 * * * * /usr/bin/osascript ~/Pictures/Wallpapers/Dynamic_Walls.scpt```

and press `control + o` and then `enter/return` to write to the file and then `control + x` to exit out of nano and we're done, the wallpaper should get changed after a few minutes

*The 5 stands for 5 minutes after which the script re-runs, one can change it to a custom interval if they wish*
____
Advantage of this is with minor tweaking we can use custom wallpapers too which Apple being Apple won't give us the option to.

will be working on making it so that even the minor tweaking is not needed for customisability

one could use a launchd command and plist to set up to auto execute at system wake

**P.S:** To disable auto switching to dark/light theme based on time if you prefer system theme to be always dark or light open the Dynamic_Walls.scpt file and set useDark to false in the first line

**P.P.S1:** one can also use a software like [GeekTool](https://www.tynsoe.org/v2/geektool/) instead of setting up a cron job in 3<sup>rd</sup> step

**P.P.S2** To remove simply open the job list with nano like in third step and erase the line and save
____

# Changelog
**1.7.2-beta**

Move to beta

Better sunrise matching by using twilight begin instead of actual sunrise time (make sure you download the getSunrise.sh file if downloading files individually)

Minor logic fix

**1.7.1-alpha**

Added noon time matching

Added useDark? switch

Minor logic fix

*1.7-alpha*

Added auto switching OS Appearance to Dark according to time. Thanks [@katernet](https://github.com/katernet/darkmode)

Added multi-monitor support. Thanks [@eclair4151](https://github.com/eclair4151)


**1.6-alpha**

Removed version name from file name to make updates easier

Some fixes for 24 hour clock setting

**Important :** One time set up change for old users, open nano as in step 3 and change the line to as seen now in third    step and save and close as before
