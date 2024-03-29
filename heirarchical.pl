sub total_size {
    my ($top) = @_;
    my $total = -s $top;
    
    return $total if -f $top;
    unless (opendir DIR, $top) {
        warn "Couldn't open directory $top: $!; skipping.\n";
        return $total;
    }
    
    my $file;
    while ($file = readdir DIR) {
        next if $file eq '.' || $file eq '..';
        $total += total_size("$top/$file");
    }
    
    closedir DIR;
    return $total;
}