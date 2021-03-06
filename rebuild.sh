#!/bin/bash
# Save status of core.autocrlf
git_autocrlf=`git config --global core.autocrlf`
# Set core.autocrlf to true (required by BuildTools).
git config --global core.autocrlf true #NOTE: Comment out this line if on linux
# Create a build directory and cd into it
mkdir build
cd build
# Download the latest version of BuildTools.jar and execute it
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar && 
java -jar BuildTools.jar ||
(echo "Build failed" ; git config --global core.autocrlf $git_autocrlf; exit 1)
git config --global core.autocrlf $git_autocrlf
