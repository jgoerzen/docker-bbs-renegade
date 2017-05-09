# Renegade BBS

This image runs a telnettable Renegade BBS server inside Docker.

It is based upon:

 - [My DOSEMU environment for Docker](https://github.com/jgoerzen/docker-dosemu)
 - [My general BBS template, jgoerzen/dos-bbs](https://github.com/jgoerzen/docker-dos-bbs) and the dos-bbs-balance
 - [The Renegade BBS](http://renegadebbs.info)

This provides the full v1.20 setup in Drive G:.

# Install and Run

You can install with:

    docker pull jgoerzen/bbs-renegade

And run with:

    docker run -d -p 5901:5901 -p 23:23 --name bbs-renegade jgoerzen/bbs-renegade

# Accessing and general commands

For details, see the [dos-bbs generic info](https://github.com/jgoerzen/docker-dos-bbs).

# Installed Files

This image is built upon the extensive [collection in jgoerzen/dos-bbs](https://github.com/jgoerzen/docker-dos-bbs).
Please see that page for details on DOS and the underlying configuration.

Renegade itself is installed in `G:\RG`.

See the jgoerzen/dos-bbs documentation for more.

# VNC console and telnet ports

The jgoerzen/dos-bbs will describe this.  Please refer to it.

The node basically does this to start up a Renegade instance:

    h:
    cd ADF
    lh adf COM1 3F8  4 115200 8192  8192  8   (load the FOSSIL driver)
    g:
    cd rg
    renegade -N3 -Q -B115200   (where 3 is the node number)

You can start up the DOS console with `dosconsole`.  To access the Renegade
config system, run the above commands, except at the end, omit the `-Q -B115200`.

You can connect to the local BBS with ATDTlocalhost.

# More Information

 - [Renegade homepage](http://www.renegadebbs.info/)
 - [Renegade in Ubuntu](http://www.instructables.com/id/Renegade-BBS-in-Ubuntu-Linux-Telnet-Multi-Node/)
 - [Another Renegade site](http://www.redditmirror.cc/cache/websites/geek.phatus.com_9stap/geek.phatus.com/2009/08/renegade-bbs-in-ubuntu-linux-telnetmulti-node/index.html)
 - [Renegade Documentation](http://renegadebbs.info/docs/)

# Source

This is prepared by John Goerzen <jgoerzen@complete.org> and the source
can be found at https://github.com/jgoerzen/docker-bbs-renegade

# Copyright

Docker scripts, etc. are
Copyright (c) 2017 John Goerzen 
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:
1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
3. Neither the name of the University nor the names of its contributors
   may be used to endorse or promote products derived from this software
   without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE AUTHORS AND CONTRIBUTORS ``AS IS'' AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
SUCH DAMAGE.

Additional software copyrights as noted.


