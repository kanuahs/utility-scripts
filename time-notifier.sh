# Sends current time as a notification
notify-send -i /usr/share/icons/Humanity/apps/48/time.svg "Time" "$(date +%r)"

# TODO:
#  - add cron job for every 30 min or 1 hour or custom interval /
#  - add option to remove and clean up cron-job
#  - add support for pomodoro
