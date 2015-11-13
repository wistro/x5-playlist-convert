# x5-playlist-convert
creates an m3u8 playlist of relative paths to flac files.

Creator: J. Leslie Rose
License: GPL v. 3

playlist.sh is a bash script that adds all songs on an album (passed with -T) or all songs by an artist (passed with -a) to a playlist (name of playlist passed with -p; if blank, playlist will be named "<album name>.m3u8" for the first album added to the playlist)

playlist.sh uses a perl script createPlaylist.pl to parse the list of files and create the playlist
