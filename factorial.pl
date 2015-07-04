#!/usr/bin/env perl

sub factorial {
    my $n = shift;
    return 1 if $n == 0;
    return factorial($n-1) * $n;
}

print factorial($ARGV[0]) . "\n";