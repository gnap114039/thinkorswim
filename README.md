# Thinkorswim docker image for linux
This is a linux desktop shortcut to launch thinkorswim docker images.

### Step 1
download the docker images
> docker pull gnap114039/thinkorswim

### Step 2
Try to run the shortcut script call "run" on this folder to make sure it work properly.
> ./run

### Step 3
Just download this folder and place to the local direcroty whatever you like.

### Step 4
Change the thinkorswim.desktop Exec and Icon attribute to corresponding path where this folder located.

### Step 5
Put the "thinkorswim.desktop" under directory   
--> ~/.local/share/applications

### Step 6
Now you can find your thinkorswim shortcut on applications menu.     
Note: If it does not appear on applications menu, try to restart your computer.

### Reminder
1. If first time running up the container please be patient when the app showing "updating" message, it may take some time.
2. if after login and not showing any window popup, try pressing superkey(windows key) + up/down arrow to maximize/minimize the window, the window should appear. (Found this issue on ubuntu 22.04)
