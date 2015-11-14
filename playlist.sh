#!/bin/bash

while getopts a:Tp option
do
  case "${option}"
    in
    a) ARTIST=${OPTARG};;
    T) ALBUM=${OPTARG};;
    p) PLAYLIST=${OPTARG};;
  esac
done

if [ -z $PLAYLIST ]
then
  PLAYLIST=$ARTIST
fi

PLAYLIST+=".m3u8"

if [ -z $ALBUM ]
then
  list=`ls -lhR $ARTIST*`
else
  list=`ls -lhR $ARTIST*$ALBUM*`
fi

createPlaylist.pl $list $PLAYLIST
