#!/bin/bash
# Create a build directory if it
# doesn't exist and cd into it
mkdir build
cd build
# Remove old update-status files
rm ../update-status
cd BuildData; git status remote >> ../../update-status; cd ..
cd Bukkit; git status remote >> ../../update-status; cd ..
cd CraftBukkit; git status remote >> ../../update-status; cd ..
cd Spigot; git status remote >> ../../update-status; cd ..
# Count how many repositories are up to date
UPTODATE=`grep -c up-to-date ../update-status`
# If any of the repositories is outdated return exit code 1
echo $UPTODATE | grep -q 4 || (echo "only $UPTODATE repositories are up-to-date"; exit 1)
