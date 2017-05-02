# Renegade BBS

This image runs a telnettable Renegade BBS server inside Docker.

It is based upon:

 - [My DOSBox environment for Docker](https://github.com/jgoerzen/docker-bbs/tree/master/dosbox)
 - [My general BBS template](https://github.com/jgoerzen/docker-bbs/tree/master/dos-bbs) and the dos-bbs-balance
 - [Multi-node telnet BBS setup](https://github.com/Geryon/TelnetBBS)
 - [The Renegade BBS](http://renegadebbs.info)

This provides the full v1.20 setup in Drive C:.

# Install and Run

You can install with:

    docker pull jgoerzen/bbs-renegade

And run with:

    docker run -d -p 5901:5901 -p 23:23 --name bbs-renegade jgoerzen/bbs-renegade

# Installed Files

This image is built upon the extensive [collection in jgoerzen/dos-bbs](https://github.com/jgoerzen/docker-bbs/tree/master/dos-bbs).
Please see that page for details on DOS and the underlying configuration.

Renegade itself is installed in `C:\RG`.

See the jgoerzen/dos-bbs documentation for more.

# VNC console and telnet ports

The jgoerzen/dos-bbs will describe this.  Please refer to it.

If you want to manually run the Renegade system, first type `dosboxconsole` in the xterm.
Now, inside DOSBox:

    c:
    cd rg
    share
    renegade -N3  (or whatever; don't mimic what's already running!)

You can then configure the system as needed.  Note: this is pretty much
the same as you'd see from the auto-started node.

# More Information

 - [Renegade homepage](http://www.renegadebbs.info/)
 - [Renegade in Ubuntu](http://www.instructables.com/id/Renegade-BBS-in-Ubuntu-Linux-Telnet-Multi-Node/)
 - [Another Renegade site](http://www.redditmirror.cc/cache/websites/geek.phatus.com_9stap/geek.phatus.com/2009/08/renegade-bbs-in-ubuntu-linux-telnetmulti-node/index.html)
 - [Renegade Documentation](http://renegadebbs.info/docs/)

# Source

This is prepared by John Goerzen <jgoerzen@complete.org> and the source
can be found at https://github.com/jgoerzen/docker-bbs/tree/master/bbs-renegade

