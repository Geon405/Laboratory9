#!/usr/bin/perl

my $username = $ENV{USER};
my $hostname = 'hostname';
my $uptime = 'uptime -s';
chomp($hostname);
print "Welcome, $username\n";
print "This is , $hostname machine.\n";
print "The system is up since $uptime";

