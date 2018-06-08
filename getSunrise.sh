#!/bin/bash
curl -s $(~/Pictures/Wallpapers/LocateMe -f "http://api.sunrise-sunset.org/json?lat={LAT}&lng={LON}") | python -c "import sys, json; print json.load(sys.stdin)['results']['sunrise']"