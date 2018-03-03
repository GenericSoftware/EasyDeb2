# What?
This is a program for Ubuntu, Debian, or any distro based on Debian or Ubuntu that makes creating installable `.deb` packages easy.
## Note:
This project doesn't create apps, it creates installers for apps, on Windows, this would be similar to a `.msi` or `.exe` installer creator.
## Installation:
* In a terminal, `git clone https://github.com/SomethingGeneric/CreatepkgProject.git`
* Open that folder in terminal.
* Done!
## Usage:
* `easydeb`
## Help:
* Q: I installed, but it says that the command `easydeb2` can't be found!
  * This is usually caused by a bug in Bash. Please restart your terminal, but if that doesn't solve it, please open an issue.
* Q: The script opened a file editor and I can't close it!!! :O
	* First of all, welcome to GNU Nano, one of the many command line text editors. Secondly, press `CTRL+X` to bring up the save/quit prompt, then press `y`, then `ENTER`.
* Q: The script ran fine, but how do I use the file it made?
	* Since your distro must use `dpkg` if you've ran the script, you can run `sudo dpkg -i filename.deb` on Ubuntu, or run the same command without `sudo` on Debian.
## Tips:
* When the script asks you to add files, you have to pretend that the package root (the directory that you supplied as package name) is the root folder of the system, or `/`. For example, if you wanted to add a file that'd be in `/usr/bin/`, you'd create `/packagefolder/usr/bin/`
* The `postinst` file is a bash script, like the main `create_pkg.sh` provided by this repo. If you don't know how to create a bash file, your application likely doesn't need one. If you'd like to learn, a bash script is basically a file that runs a sequence of terminal commands. There are plenty of great online tutorials if you'd like to extend your knowledge.
