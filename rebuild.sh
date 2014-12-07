#!/bin/bash
# I like core.autocrlf set to false, but it'll casue BuildTools to fail. 
# If you have it set to true you can remove all the 'git config' lines here
git config --global core.autocrlf true
# Create a build directory and cd into it
mkdir build
cd build
# Download the latest version of BuildTools.jar and execute it
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar && 
JAVA_HOME="C:\Program Files\Java\jdk1.8.0_25" java -jar BuildTools.jar ||
(echo "Build failed" ; git config --global core.autocrlf false; exit 1)
git config --global core.autocrlf false
