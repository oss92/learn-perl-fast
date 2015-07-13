#!/usr/bin/perl

# Log warnings
use warnings;

# Print an example message, notice unicode support
print "Hello, world! \x{2665} \n";

# Print several strings
print "Here ", "we ", "print ", "strings.\n";

# Using paranthesis
print ("Here ", "we ", "print ", "strings using paranthesis.\n");

# Limit the number of arguments by moving the brackets. What happens to the others? 
# No perl instructions, so nothing happens.
print ("Here ", "we ", "print less words.\n"), "strings.\n";

# Code blocks
print "1st statement\n";
{
	print "2nd statement\n";
	{
		print "3rd statement\n";
	}
	print "End of block!\n";
}

# Printing octals (must start with a zero)
print 021071; # prints decimal number 8761
print "\n";

# Printing hexadecimals
print 0xBAFF; # prints decimal number 47871

print "\nBack to your console...";
