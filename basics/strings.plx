#!/usr/bin/perl

##############################################################
#  Lesson #   : 3
#  Title      : Strings
#  Author     : github.com/oss92
#  Date       : 07/14/2015
#  Description: Examples for specifying strings in perl
##############################################################

# Log warnings
use warnings;
print "=========== Output start ===========\n";

## a.Double-Quoted Strings
print "\tThis is a double-quoted string. Notice the tab and the line-break. \x{2665} \n";
print"C:\\Users\\Files\\\n";



## b.Single-Quoted Strings
### No processing is done within single-quoted strings except on \\ and \'
print '\tThis is a single-quoted string. Notice there is neither a tab nor a line-break. \x{2665} \n', "\n";
print 'C:\Users\Files\ ', "\n"; # Remember the space between \ and ' in order not to escape the single quote
print 'this\\ is\\' , ' an\'\' example\'' , "\n";

### There's no problem with putting double quotes inside a single-quoted string, or vice versa
print "I'm learning perl.\n";
print '"Awesome!," I said unknowingly.', "\n";




## c.Quote-like operators
print qq/'"Hi," said Jack. "Have you read Slashdot today?"'\n/; # acts like double-quoted
print q/'"Hi," said Jack. "Have you read Slashdot today?"'\n/; # acts like single-quoted
### Used for less ambiguity and no need to escape quotes inside a string
### We don't have to stick with //. We can also use any non-alphanumeric character.
### We can also use {}, [], () and <> asdelimiters.
print qq[ ...Go to new line, using square brackets delimiters. \n];
print qq|'"Hi, This is awesome!," He said.'\n|;
print qq#'"Hi, I am using a hash as a delimiter," He said.'\n#;
print qq('"Hi, I am using brackets as delimiters," He said.'\n);
print qq<'"Hi, I am using less-than and greater-than as delimiters," He said.'\n>;
print qq{'"Hi, I am using curly brackets as delimiters," He said.'\n};
print qq~'"Hi, I am using a wave as a delimiter," He said.'\n~;



## d.Here-Documents
# Label must follow after the arrows with no spaces (Here our label is EOF)
print<<EOF;

This is a here-document. It starts on the line after the two arrows,
and it ends when the text following the arrows is found at the beginning of a line.

EOF

# A here-document works like a double-quoted string by default.
# Surround the label with single quotes in order for it to work like a single-quoted string

print<<'brk';

This is a another here-document. Here-Documents can have different labels.\n
In this example we use 'brk'
Also notice the \n here is not an escape sequence since we added single quotes on the label.

brk