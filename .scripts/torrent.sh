#!/bin/bash
#Script for adding torrents and notify
pgrep -x transmission-da || (transmission-daemon && notify-send "Starting transmission daemon..." && sleep 3 && pkill -RTMIN+7 "${STATUSBAR:?}")

transmission-remote -a "$@" && notify-send "Torrent added."

