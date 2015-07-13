#!/usr/bin/perl

# Log warnings
use warnings;

# Print an example message, notice unicode support
print "Hello, world! \x{2665} \n";

# Print several strings
print "Here ", "we ", "print ", "several ", "strings.\n";

# Using paranthesis
print ("Here ", "we ", "print ", "several ", "strings using paranthesis.\n");

# Limit the number of arguments by moving the brackets. What happens to the others? 
# No perl instructions, so nothing happens.
print ("Here ", "we ", "print less words.\n"), "several ", "strings.\n";

# Print in blocks
print "1st Statment\n";
{
	print "2nd Statement\n";
	{
		print "3rd Statment\n";
	}
	print "Back to your console...";
}
