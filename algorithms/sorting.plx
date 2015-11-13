#!/usr/bin/perl

##############################################################
#  Lesson #   : 5
#  Title      : Sorting
#  Author     : github.com/oss92
#  Date       : 11/13/2015
#  Description: Perl implementation of several sorting algorithms
##############################################################


# A subroutine to perform insertion sort in place (ascending)
sub insertion_sort {
	# @_ passes the whole list of parameters passed to the subroutine 
	# to the local variable @list
    my @list = @_;
    # Loop from position 1 to the last index of the list ($#list)
    foreach my $i (1 .. $#list) {
    	# Store the value stored in index i in temporary variable
    	# You will compare this value with values stored in previous indices
    	# and move it to its sorted location
        my $tmp = $list[$i];
        # Start looping from index i
        # This loop sorts in ascending order, if you want to sort
        # in descending order change the second condition to
        # $tmp > $list[$j - 1]
        my $j = $i;
        while ( $j > 0 && $list[$j - 1] > $tmp) {
        	# Decrement j to continue comparing with values stored
            # in previous indices
            $j--;
        	# Move the value stored in the previous index to its
        	# correct order
            $list[$j + 1] = $list[$j];
        }
        # Put the value you stored in a temporary value in its
        # correct location so that the list from index 0 to index i
        # is already sorted
        $list[$j] = $tmp;
    }
    # return your sorted list
    return @list;
}

my @already_sorted;
push @already_sorted, $_ for 1..6;
print "Insertion sort runs in linear time if the list is already sorted: $insertion_sort(@already_sorted)\n";

my @list = (49, -63, 4, 0, 33, 618, 2, 23, 101, 221);
print "Input list: (@list)\n";
@insertion_sort_output = insertion_sort(@list);
print "Insertion sort: (@insertion_sort_output)\n";