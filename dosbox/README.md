# DOSBox for Docker Server

This image can be used standalone, or as a base for other images.

It provides a DOSBox environment and a VNC console for it, running on
port 5901.

Under /dos, you will find dosbox.conf (the config file), to which you
can easily append autoexec statements.  Also, there are subdirectories
for drives C: through G: and Y:.  This image will install FreeDOS commands
into Y:\ (pulled from dosemu, as it happens) and make sure that the DOSBox
and FreeDOS commands are both on the system's PATH.

The environment variable VNCPASSWORD can set the password for the VNC console
(maximum 8 characters, a limitation of tightvncserver).  If you do not set
one, a random password will be assigned on each start of the container, and
logged in the docker logs.

This is prepared by John Goerzen <jgoerzen@complete.org> and the source
can be found at https://github.com/jgoerzen/docker-bbs/tree/master/dosbox

