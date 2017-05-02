# DOS BBS client and server

This image is designed to let you run a DOS BBS inside Docker, or to connect
to a remote BBS.  It can be used standalone, or as a base for other images.

It is based upon [jgoerzen/dos-bbs](https://github.com/jgoerzen/docker-bbs/tree/master/dos-bbs).  Instead of using TelnetBBS to start up nodes on the fly, it instead
runs persistent nodes with a simple load balancer to start them.

Please see dos-bbs for the primary documentation.

An additional environment variable, BBSNODES, can be set to indicate how many nodes to
start.  It defaults to 1.

# Source

This is prepared by John Goerzen <jgoerzen@complete.org> and the source
can be found at https://github.com/jgoerzen/docker-bbs/tree/master/dos-bbs
