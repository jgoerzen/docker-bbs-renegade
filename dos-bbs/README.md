# DOS BBS client and server

This image is designed to let you run a DOS BBS inside Docker, or to connect
to a remote BBS.  It can be used standalone, or as a base for other images.

It is based upon:

 - [My DOSBox environment for Docker](https://github.com/jgoerzen/docker-bbs/tree/master/dosbox)
 - [TelnetBBS, a multi-node telnet BBS setup](https://github.com/Geryon/TelnetBBS)

# Install and run

You can install with:

    docker pull jgoerzen/dos-bbs

And run with:

    docker run -d -p 5901:5901 -p 23:23 --name dos-bbs jgoerzen/dos-bbs

# Installed files

Here's what you can find in this image.

 - `/dos/drive_*` corresponds to particular DOS drives.
 - `/dos/dosbox.conf` is the default DOSBox config for a single session,
    started by default and by `/usr/local/bin/dosboxconsole`.
 - `/dos/dosbox-telnetbbs-template.conf` for the multi-node Telnet BBS server config
 - `/dos/TelnetBBS-master/telnetbbs.conf` is the main configuration for the Telnet BBS.
 - Within DOSBox:
   - `Y:\DOS` contains some needed FreeDOS components and is on the PATH
   - `Y:\SCRIPTS` is a convenient place to drop scripts as needed; also on the PATH
   - `Y:\ADF` containts the ADF FOSSIL driver.
   - `D:\COMM` contains Telix and Telemate, nice DOS BBS clients.
   - `D:\DOORS` contains a few DOS DOOR games.

See the jgoerzen/dosbox documentation for the recommendations on child image
usage of these drives.

Note: this image provisions three files in /etc/supervisor/conf.d: dosbox.conf,
telnetbbs.conf, and xterm.conf.  You probably will want to disable at least one of
dosbox.conf or telnetbbs.conf in child images.

# VNC Console

VNC is exposed on port 5901.  You can connect to this port.  You will see, by default,
an xterm (white) and a DOSBox terminal (black) running here, though
child images may alter these defaults.  If you do not see a DOSBox terminal,
then the command `dosboxconsole` should get one for you.

Don't worry if the TelnetBBS consoles feel sluggish; DOSBox is set to
frameskip=30 on them to help reduce wasted CPU cycles.  The dosboxconsole
doesn't do any frameskip, however.

# Telnet ports

Telnet is exposed on port 23, and runs the TelnetBBS system.

Within the image, port 5000 will connect you to the emulated modem
in the default DOSBox console.  Ports 7001 and above are used for the
TelnetBBS system.  You will probably never need to work with these directly.

# Dialing into DOS BBSs

From the VNC console with the default DOSBox, you can dial into various BBSs.  Here is an
example of what to type to get started:

   D:
   cd \comm\tm
   tm

This starts Telemate.  Now, close the blue phonebook with Esc and type:

    ATNET1
    ATDTbbs.starbase21.net

This will begin a Telnet session with DOSBox's simulated modem.  Note also
that you can add a port number with :port at the end (eg, `ATDTbbs.starbase21.net:23`).

The ATNET1 puts DOSBox into proper telnet mode.  Note that these commands are case-sensitive
for DOSBOX.

Alt-X exits Telemate, and Ctrl-F10 un-captures the mouse from the DOSBox window.

# Notes on 8-bit cleanliness

Different BBS systems run in "raw" mode, or inside the telnet protocol.
Generally, images under here will run "raw".  When you connect remotely,
if you have troubles with file transfers, try different permutations of
ATNET0 and ATNET1.

# Source

This is prepared by John Goerzen <jgoerzen@complete.org> and the source
can be found at https://github.com/jgoerzen/docker-bbs/tree/master/dos-bbs

# More resources

 - [Telnet to a BBS within DosBOX](http://breakintochat.com/blog/2013/04/17/telnet-to-bbs-within-dosbox-emulator/)
 - [Telemate v4.2x under DOSBox Tutorial](http://www.starbase21.net/telemate.html)
 - [Reddit: Using DosBox to Dial into Telnet boards](https://www.reddit.com/r/retrobattlestations/comments/5o5edj/using_dosbox_to_dial_into_telnet_boards/)
 - [Configuring DOSBox to allow inbound and outbound telnet connections](https://www.megaplonk.com/wiki/doku.php?id=emulation_and_virtualization:configuring_dosbox_to_allow_inbound_and_outbound_telnet_connections_as_if_dial-up_modem_calls)
 - [DOS BBS files](http://archives.thebbs.org/)

