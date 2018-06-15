# Dynamic_Walls

Same script avialable in a simple App format [here](https://github.com/kush-agra/Dynamic_Walls-app/)

*Beta* [**See Changelog**](https://github.com/kush-agra/Dynamic_Walls#changelog)

Experimental script to replicate macOS Mojave's dynamic wallpapers feature, also sets system theme to dark/light accordingly 

Uses [Sunrise-Sunset api](https://sunrise-sunset.org/api) to get the sunrise and sunset times of current location retrieved by the [LocateMe](http://iharder.sourceforge.net/current/macosx/locateme/) command line tool 

>LocateMe is a Public Domain command-line tool that lets you find your location (latitude, longitude, etc) using Apple's geolocation services.

The wallpapers were extracted from the HEIC file from the Mojave beta

A only to be run once terminal command file is used to generate and place a plist file in it's appropriate location and load it the plist ensures the script continues to run every 5 minutes ensuring the wallpaper is kept up-to-date

The plist file can be found by the name of Dynamic_Walls.scheduler.plist in the /Users/<Username>/Library/LaunchAgents/

# Set Up

1. Download and extract the [zip containing all the wallpaper files](https://mega.nz/#!UxxyVKJT!4Kn3ilScP2FALnbR3mG3G6I7gDpm7ZE8lGEGU1hGEG0)
extract it directly or copy the extracted folder to the directory `/Users/<Username>/Pictures/Wallpapers` create the Wallpapers directory if it doesn't exist, confirm that the pictures are in the *mojave_dynamic* directory

2. Download the latest release (or the github repo as zip) and place all enclosed files in the above Wallpapers directory

just for reference the Wallpapers folder in the end should look something like this
![Imgur](https://i.imgur.com/yrp4h7v.jpg)

3. (Use the third step in your README.md file for releases 1.7.3 and earlier)

Just right click and open the Dynamic_Walls_plistGenerator file (Double clicking to open won't usually work) and we're all set up and done
____
Advantage of this is with minor tweaking we can use custom wallpapers too which Apple being Apple won't give us the option to.

~~will be working on making it so that even the minor tweaking is not needed for customisability~~
https://github.com/kush-agra/Dynamic_Walls-app/

**P.S:** To disable auto switching to dark/light theme based on time if you prefer system theme to be always dark or light open the Dynamic_Walls.scpt file and set useDark to false in the first line

**P.P.S1:** one can also use a software like [GeekTool](https://www.tynsoe.org/v2/geektool/) instead of the 3<sup>rd</sup> step
____

# Changelog
**1.7.4-beta**

Replaced cron jobs by something far better ie plists. Thanks [@john2691](https://github.com/john2691) for the hard work

**1.7.3-beta**

New fixed image order

Fixed an overlapping times issue

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
