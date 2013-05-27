1) visit the RotMG webpage to grab their swf
2) decompile it
3) realize that the swf, isn't the game itself,
   but actually a swf, that queries for a current
   version. Then it uses that current version to
   grab the latest version of the .swf and loads
   that.
   a) this seems like a good model, because it
      allows them to distribute a single .swf
	  to multiple websites, but still have
	  control over the current version and
	  seamlessly make improvements.
4) using the version mentioned above, grab the
   latest .swf
5) decompile it using 