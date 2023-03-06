
echo "Starting Obsisidan .... " >> /config/logs/obsidian.log

/squashfs-root/obsidian --no-sandbox --disable-dev-shm-usage --disable-gpu --disable-software-rasterizer --remote-debugging-port=8890 --window-position=400,10 

echo "Obsisidan Ended .... " >> /config/logs/obsidian.log

(sleep 2s && echo "Executing PostTest ss" >> /config/logs/gnome.log && gnome-screenshot >> /config/logs/gnome.log && rename 's/Screenshot from .*/Anki PostTest.png/' /config/*.png) &
sleep 2s

pkill anki
