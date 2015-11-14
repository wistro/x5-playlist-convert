# x5-playlist-convert
creates an m3u8 playlist of relative paths to flac files.

Creator: J. Leslie Rose
License: GPL v. 3

playlist.sh is a bash script that adds all songs on an album (passed with -T) or all songs by an artist (passed with -a) to a playlist (name of playlist passed with -p; if blank, playlist will be named "<artist name>.m3u8")

playlist.sh also takes an input -e for the extension of the music files in question. If not specified, this will default to flac

playlist.sh uses a perl script createPlaylist.pl to parse the list of files and create the playlist

REQUIREMENTS:
  1) folder containing both files MUST be in the PATH
  2) call the bash script from the folder in which you keep your music folders
  3) assumes that music files are organized as follows:
    <artist name> - [ANYTHING]<album name>[ANYTHING]/[ANYTHING].<extension>
    (as an example:
      Say Hi To Your Mom - 2004 - Numbers & Mumbles [FLAC]/02 A Hit In Sweden.flac
    )
  4) artist MUST be given in full (case does not matter)
  5) partial album names are allowed
