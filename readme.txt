1) visit the RotMG webpage to grab their swf
2) decompile it
3) realize that the swf, isn't the game itself,
   but actually a swf, that queries for a current
   version. Then it uses that current version to
   grab the latest version of the .swf and loads
   that.
   a) I learned the above by decompiling the code
      using JPEXS. The code was straight forward
	  from there and is included in this repository.
   b) this seems like a good model, because it
      allows them to distribute a single .swf
	  to multiple websites, but still have
	  control over the current version and
	  seamlessly make improvements.
4) using the version mentioned above and use that
   to grab the latest .swf
5) decompile it using JPEXS
6) use JPEXS to remove as much dead code and traps
7) use JPEXS to rename all identifies to something
   with a-z,A-Z characters only.
8) FlashDevelop has syntax highlighting and simple
   search and replace. Using that to de-obfuscate
   the code.
9) the networking stuff is what I am interested in, so
   I look for Socket, which flash uses for TCP
   connections. I renamed the containing class and
   all pointers to it to:
   aaa.rotmg.net.RotMGNetworkHandler
   a) anything object that has been named properly, I'll move to
      aaa
10) PEM, RC4, incoming and outgoing cipher
    a) at this point, all I knew was that stuff was getting encrypted
	   which explained why it was super difficult for me to use
	   Wireshark (packet sniffer) to learn about the network protocol
11) actions
12) attempting my first connection
    a) secret is not used for logging in manually, it's for external
	   logins like kongregate steam, and kabam
    b) so I looked around for password and came across the HELLO
	   action. I was looking at the data and it had a key time and
       key
	c) that brought me to the RECONNECT action which has a key
	d) I am guessing this RECONNECT msg is sent after you
	   initially connect with the server
	e) now I'm looking for the host and port to connect to