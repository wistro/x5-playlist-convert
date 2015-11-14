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

print $list;
print $playlist;
