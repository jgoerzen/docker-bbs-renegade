# DOSBox for Docker Server

This image can be used standalone, or as a base for other images.

It provides a DOSBox environment and a VNC console for it, running on
port 5901.

# Install and run

You can install with:

    docker pull jgoerzen/dosbox

And run with:

    docker run -d -p 5901:5901 --name mydosbox jgoerzen/dosbox

# Installed files

Under `/dos`, you will find `dosbox.conf` (the config file), to which you
can easily append autoexec statements.  Also, there are subdirectories
for drives C: through H: and Y:.  This image will install FreeDOS commands
into `Y:\DOS` (pulled from dosemu, as it happens) and make sure that the DOSBox
and FreeDOS commands are both on the system's PATH.

`Y:\SCRIPTS` is also created and put on the PATH, though empty by default;
it is a place where you can add scripts and such that run later.

Child images may, but are not required to, follow this convention:

 - Drive C for the main application (probably a volume, since many write to their CWD)
 - Drive D for helper applications (perhaps also a volume, since many write to their CWD)
 - Drive Y for static utilities/scripts, that would not need to be a volume.

This image uses supervisor; please see the supervisor/ directory for
examples.  Adding your own processes is very simple.

# Environment variables

 - `VNCPASSWORD` can set the password for the VNC console
   (maximum 8 characters, a limitation of tightvncserver).  If you do not set
   one, a random password will be assigned on each start of the container, and
   logged in the docker logs.

# VNC-based console

VNC is exposed on port 5901.  You can connect to this port.  You will see, by default,
an xterm (white) and a DOSBox terminal (black) running here, though
child images may alter these defaults.  If you do not see a DOSBox terminal,
then the command `dosboxconsole` should get one for you.

# Source

This is prepared by John Goerzen <jgoerzen@complete.org> and the source
can be found at https://github.com/jgoerzen/docker-bbs/tree/master/dosbox



