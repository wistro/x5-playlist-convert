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

#if there is already a playlist by the name of $playlist in
#working dir, then open in append mode, otherwise open
#in overwrite mode and add the #EXTM3U line to beginning
if ( -f $playlist )
{
  open (FILE, ">>$playlist") or die "Can't write to $playlist: $!";
}
else
{
  open (FILE, ">$playlist") or die "Can't write to $playlist: $!";
  print FILE "#EXTM3U\n";
}
