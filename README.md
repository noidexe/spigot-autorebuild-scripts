spigot-autorebuild-scripts
==========================

Checks if Spigot needs to be rebuilt, downloads the latest BuildTools.jar and executes it.

WINDOWS PREREQUISITES
---------------------

[from md_5's [installation guide](http://www.spigotmc.org/threads/bukkit-craftbukkit-spigot-1-8.36598/)]<br>
- Java Development Kit. In order to compile any Java code you will require the Java Development Kit, or JDK. This is different from normal Java, so even if you have Java you may still need to install the JDK. If you have ever made a plugin, then there is no need to worry as you already have the JDK installed. You can grab it from here: http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
- You also need Git for Windows, or msysgit as it is known. This is very easy to install, simply download and run the installer:http://msysgit.github.io/.

LINUX PREREQUISITES
-------------------
Make sure you have git and the java jdk installed. For Debian / Ubuntu based servers simply run the command: sudo apt-get install git openjdk-7-jdk, or for CentOS based servers: sudo yum install git java-1.7.0-openjdk-devel.
Make sure you are using the linux branch of this repo. 

USAGE
-----

Download the .sh scripts to any directory <br>
run ```./rebuild.sh``` to rebuild the server jars <br>
run ```./update-check.sh``` to check whether some components need updating <br>
run ```./autorebuild.sh``` to automatically rebuild the server jars if some components need updating

All the scripts must be run using GitBash which comes with Git for Windows
