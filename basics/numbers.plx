#!/usr/bin/perl

##############################################################
#  Lesson #   : 2
#  Title      : Numbers
#  Author     : github.com/oss92
#  Date       : 07/14/2015
#  Description: Examples for different representations of numbers
##############################################################

# Log warnings
use warnings;
print "=========== Output start ===========\n";

## a. Integers
### 32 bit integers - Use Math::BigInt for more
print 17, " + (", -9 , ")\n";

### Split up thousands using underscores instead of commas (not obligatory but makes code clearer)
print 20_000_000, "\n"; # easier to read
print 20000000, "\n"; # harder to read



## b. Floating-point numbers
### Print only to 14 decimal places - Use Math::BigFloat for more
print 1/7, "\n";
print 3.141592653589793238462643383279, "\n";



## c. Binary, Hexadecimal, and Octal Numbers
### The following are different representations of the number 255
### Octals start with 0
### Binaries start with 0b
### Hexadecimals start with 0x
print 255, " represented in decimal.\n";
print 0377, " represented in octal.\n";
print 0b11111111, " represented in binary.\n";
print 0xFF, " represented in hexadecimal.\n";

### You get a 'Bareword found where operator expected' error if you tried to print 0xFG
### A 'bareword' is a series of characters that perl doesn't recognize
# print 0xFG; # Uncomment this line to experience the error
