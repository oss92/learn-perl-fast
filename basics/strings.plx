#!/usr/bin/perl

##############################################################
#  Lesson #   : 3
#  Title      : Strings
#  Author     : github.com/oss92
#  Date       : 07/14/2015
#  Description: Examples for using strings in perl
##############################################################

# Log warnings
use warnings;
print "=========== Output start ===========\n";

## a.Double-Quoted Strings
print "\tThis is a double-quoted string. Notice the tab and the line-break. \x{2665} \n";

## b.Single-Quoted Strings
### No processing is done within single-quoted strings except on \\ and \'
print '\tThis is a single-quoted string. Notice there is neither a tab nor a line-break. \x{2665} \n';