# DOS BBS base image

This image is designed to let you run a DOS BBS inside docker.

It is based upon:

 - [My DOSBox environment for Docker](https://github.com/jgoerzen/docker-bbs/tree/master/dosbox)
 - [Multi-node telnet BBS setup](https://github.com/Geryon/TelnetBBS)

From the DOSBox environment, you get the VNC console and FreeDOS basics.

This image adds the TelnetBBS setup and some door games.

Note: this image provisions two files in /etc/supervisor/conf.d: dosbox.conf
and telnetbbs.conf.  You probably will want to disable at least one of them.

