#!/bin/bash

while getopts a:T:p:e: option
do
  case "${option}"
    in
    a) ARTIST=${OPTARG};;
    T) ALBUM=${OPTARG};;
    p) PLAYLIST=${OPTARG};;
    e) EXT=${OPTARG};;
  esac
done

#default extension to flac
if [ -z "${EXT+xxx}" ]
then
  EXT=flac
fi

#default playlist name to artist name
if [ -z "${PLAYLIST+xxx}" ]
then
  PLAYLIST=$ARTIST
fi

PLAYLIST+=".m3u8"

#echo $PLAYLIST

if [ -z "${ALBUM+xxx}" ]
then
  list=`ls "$ARTIST"*/*.$EXT`
else
  list=`ls "$ARTIST"*"$ALBUM"*/*.$EXT`
fi

#echo $list

createPlaylist.pl $list $EXT "$PLAYLIST"
