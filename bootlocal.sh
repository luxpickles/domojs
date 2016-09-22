#!/bin/sh

#see https://github.com/docker/machine/issues/1814#issuecomment-210090278
#1. From VirtualBox UI (or cmd) share the folder you want available in the guest machine, have it automount. For this example, let's say the path is: /Volumes/DATA/dev and you named it: dev.
#2. Open your virtualbox console (from VBUI or ssh) and create /var/lib/boot2docker/bootlocal.sh file: $ touch /var/lib/boot2docker/bootlocal.sh
#3. Chmod +x
#4. Reboot machine

# Make directory path to the folder you shared with VirtualBox.
# We'll make the exact structure you find on your host so it's easier
# to target with docker (1:1) from the host:
# VM future folder:
mkdir -p /pickles

# Mount it using "mount -t vboxsf <name> <path>":
# Where <name> is the name in the virtualbox folder
# And <path> is the dir above (just "mkdired")
mount -t vboxsf pickles /pickles
