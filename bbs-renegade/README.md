# Renegade BBS

This image runs a telnettable Renegade BBS inside Docker.

It is based upon:

 - [My DOSBox environment for Docker](https://github.com/jgoerzen/docker-bbs/tree/master/dosbox)
 - [My general BBS template](https://github.com/jgoerzen/docker-bbs/tree/master/dos-bbs)
 - [Multi-node telnet BBS setup](https://github.com/Geryon/TelnetBBS)

This provides the full v1.20 setup in Drive C:.

Info and sources:

 - [Renegade homepage](http://www.renegadebbs.info/)
 - [Renegade in Ubuntu](http://www.instructables.com/id/Renegade-BBS-in-Ubuntu-Linux-Telnet-Multi-Node/)
 - [Another Renegade site](http://www.redditmirror.cc/cache/websites/geek.phatus.com_9stap/geek.phatus.com/2009/08/renegade-bbs-in-ubuntu-linux-telnetmulti-node/index.html)

Create like this:

 - docker pull jgoerzen/bbs-renegade
 - docker run -d -p 23:23 -p 5901:5901 --name renegade jgoerzen/bbs-renegade

# More Resources

 - [Renegade Documentation](http://renegadebbs.info/docs/)

