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
  
  more info:
  
script takes command line input of (1) artist name; (2) album name; (3) file extension; and (4) playlist name
and makes a playlist (called <playlist name>.m3u8, defaults to <artist name>.m3u8 if no playlist name given) containing all of the songs from the given artist (or artist and album).

the script is called as follows:
playlist.sh -a ARTIST -T ALBUM -p PLAYLIST -e EXTENSION
the flags can be given in any order. all but -a can be omitted

if no file extension is given, the script defaults to flac
if no album is given, all songs by the artist will be added to the playlist
script will not work without an artist being specified (will fix in a later version)

the script is designed to be called from the root directory of your SD card.
(known limitation) script assumes your music is organised in folders as follows:
TF1:\<artist name> - [any amount of info, eg. release date, or nothing]<album name>[any amount of info, eg. file format, or nothing]\[song title or something].<file extension>
Copy the Code
the playlist will use relative paths to the songs, and convert the linux/osx "/"'s to windows-style "\"'s
if you call the script more than once with the same playlist name, it will APPEND the new files to the existing playlist
