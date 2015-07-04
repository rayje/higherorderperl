#!/usr/bin/env perl

sub binary {
    my $n = shift;
    return $n if $n == 0 || $n == 1;    
    
    my $k = int($n/2);
    my $b = $n % 2;
    
    return binary($k) . $b;
}

print binary($ARGV[0]) . "\n";