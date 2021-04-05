#!/usr/bin/perl

# question2

"homework" =~ /^work/;

# question3

my $username = $ENV{USER};
my $fullname = $ENV{dirname};
my $home_directory = $ENV{"HOME"};
my $shell = $ENV{pwd};
print "User id: $username\n";
print "Full name: $fullname\n";
print "Home directory: $home_directory\n";
print "Shell: $shell";

# question4
my ($login) = @ARGV;

if (not defined $login) {
	$name = "peter";
} else {
	$name = $login;
}
