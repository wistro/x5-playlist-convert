#!/usr/bin/perl

use FileHandle;

sub trimVolumeInfo($)
{
  my $fileHandle = $_[0];
  while (<$fileHandle>)
  {
    my $line = $_;
    chomp($line);
#    print $line;
    while ($line =~ m/mp3/)
    {
      $line =~ s/mp3/flac/;
    }
    while ($line =~ m/\/.*?Music\//)
    {
      $line =~ s/\/.*?Music\///;
    }
    outputLine($line);
  }
}

sub outputLine($)
{
  my $line = $_[0];
  my $name = $ARGV[0];
  $name =~ s/^.*\///; 
  open my $fh, '>>', $name or die "Can't open $name - $!\n";
  print $fh "$line\n";
}

my $fh = new FileHandle;
$fh->open("<$ARGV[0]") or die "Could not open file\n";
trimVolumeInfo($fh);
$fh->close();
