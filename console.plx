#! /usr/bin/perl
use strict;

my $counter = 0;
print " $counter : > ";

while (<>) {
  chomp;
  my $output = eval;
  print "$output\n";
  $counter++;
  print " $counter : > ";
}