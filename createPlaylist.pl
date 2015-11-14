#!/usr/bin/perl

#find number of inputs (perl delineates inputs by whitespace)
my $inputs = $#ARGV;

#place the last input into the $playlist variable
my $playlist = $ARGV[$inputs];

#decrease inputs value by 1 to exclude $playlist variable
#and initalize $list as an empty string
$inputs--;
my $list = "";

foreach my $a (0..$inputs)
{
  $list .= ' ' . $ARGV[$a];
}

#print $list;
#print $playlist;

#if a playlist by the name #playlist DOESN'T exist,
#open the file, and print #EXTM3U as the first line
#of the new file. If playlist DOES exist, just open
#it. (both cases open the file in APPEND mode)
open (FILE, ">>$playlist") or die "Can't write to $playlist: $!";
print FILE "#EXTM3U\n" unless -z $playlist;
