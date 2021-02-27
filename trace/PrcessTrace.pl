#!/usr/bin/perl
my $tracePath = $ARGV[0];
my $outputPath = "cc_out.din";
my $id = "0";
my %ids = ();

# Open File
open(my $fh, '<', $tracePath)
    or die "Could not open file $tracePath";

# Iterate over each line
while (my $line = <$fh>) {
    chomp $line;
    # Split the line by space
    my @vals = split(' ', $line);
    # Get the address id and store it in the variable
    $id = $vals[-1];
    # Check if address doesn't exist in the hash. If it does, initialize it with a counter of 1. Otherwise increment counter.
    if(!exists $ids{$id}){
        $ids{$id} = 1;
    }else {
        $ids{$id}++;
    }
}
close($fh);

open($fh, '>', $outputPath);

# Sort the hash by key order, then format & print to the file.
foreach $key (sort{ $a <=> $b } keys %ids){
    my $res = sprintf("%4d $key\n", $ids{$key});
    print $fh $res;
}

close($fh);