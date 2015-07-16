#!/usr/bin/perl

##############################################################
#  Lesson #   : 4
#  Title      : Conversions
#  Author     : github.com/oss92
#  Date       : 07/16/2015
#  Description: Conversions between numbers and strings
##############################################################

# Log warnings
use warnings;
print "=========== Output start ===========\n";

### Perl handles string covnersion to integers and floating-points brilliantly
### Multiply a numerical string literal and perl treats it as a number
print "0.7" * 7, qq[\n];
print "0.7" * "7", qq[\n];
print "7" * 7, qq[\n];

### Octal, hex, and binary numbers in string literals 
### .. or strings stored in variables DO NOT get converted automatically
print hex("0x41"), qq[\n];
print oct("040"), qq[\n];

### oct() can be used also to convert binary to decimal
print oct("0b11011"), qq[\n];

### Instead of raising errors, these functions will stop reading when they
### get to a digit that doesn't make sense in that number system.
print hex("FGG"), qq[\n];
print oct("178"), qq[\n];
### These will raise warnings like Illegal hexadecimal digit 'G' ignored at basics/conversions.plx line ##.
### .. because we use warnings, comment 'use warnings;' to ignore these type of warnings
