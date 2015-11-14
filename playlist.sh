#!/bin/bash

while getopts a:T:p: option
do
  case "${option}"
    in
    a) ARTIST=${OPTARG};;
    T) ALBUM=${OPTARG};;
    p) PLAYLIST=${OPTARG};;
  esac
done

if [ -z "${PLAYLIST+xxx}" ]
then
  PLAYLIST=$ARTIST
fi

PLAYLIST+=".m3u8"

if [ -z "${ALBUM+xxx}" ]
then
  list=`ls -lhR "$ARTIST"*`
  echo $list
else
  list=`ls -lhR "$ARTIST"*"$ALBUM"*`
fi

createPlaylist.pl $list $PLAYLIST
