#!/usr/bin/perl

# Basic syntax overview

print "Hello, world";

# This is a comment

print 
	"Hello, world"
	;

# this would print with a linebreak in the middle
print "Hello
world";

print "Hello, world";
print 'Hello, world';

print "Hello, $name\n"; # works fine
print 'Hello, $name\n'; # prints $name\n literally

print 42;

print("Hello, world\n");
print "Hello, world\n";

# Perl variable types

# Scalars

my $animal = "camel";
my $answer = 42;

print $animal;
print "The animal is $animal\n"
print "The square of $answer is ", $answer * $answer, "\n";

print; # prints contents of $_ by default

# Arrays

my @animals = ("camel", "llama", "owl");
my @numbers = (23, 42, 69);
my @mixed = ("camel", 42, 1.23);

print $animals[0];	# prints "camel"
print $animals[1];	# prints "llama"

print $mixed[$#mixed];	# last element, prints 1.23

if (@animals < 5) {...}

# To get multiple values from an array:

@animals[0,1];			# gives ("camel", "llama");
@animals[0..2];			# gives ("cemel", "llama", "owl);
@animals[1..$#animals];		# gives all except the first element

my @sorted = sort @animals;
my @backwards = reverse @numbers;

# Hashes

my %fruit_color = ("apple", "red", "banana", "yellow");

my %fruit_color = (
	apple => "red",
	banana => "yellow",
);

$fruit_color{"apple"};		# gives "red"

my @fruits = keys %fruit_color;
my @colors = values %fruit_color;

# Variable scopint

my $x = "foo";
my $some_condition = 1;
if ($some_condition) {
	my $y = "bar";
	print $x;		# prints "foo"
	print $y;		# prints "bar"
}
print $x;			# prints "foo"
print $y;			# prints nothing; $y has fallen out of scope

# Conditional and looping constructs

if (condition) {
	...
} elsif (other condition) {
	...
} else {
	...
}

unless (condition) {
	...
}

while (condition) {
	...
}

until (condtiion) {
	...
}

for ($i = 0; $i <= $max; $i++) {
	...
}

# Builtin operations and functions

Arithmetic

	+ addition
	- substraction
	* multiplication
	/ division

Numeric comparison
	
	== equality
	!= inequality
	< less than
	> greater than
	<= less than or equal
	>= greater than or equal

String comparision
	
	eq equality
	ne inequality
	lt less than
	gt greater than
	le less than or equal
	ge greater than or equal

# Files and I/O
	
	open(my $in, "<", "input.txt") or die "Can't open input.txt: $!";
	open(my $out, ">", "output.txt") or die "Can't open output.txt: $!";

	my $line = <$in>;
	my @line = <$in>;

	print STDERR "This is your final warning.\n"
	print $out $record;
	print $log $ogmessage;

# Regular expressions
	
	if (/foo/)	{...} # true if $_ contains "foo"
	if ($a =~ /foo/) {...} # true if $a contains "foo"

	s/foo/bar;		# replaces foo with bar in $_
	$a =~ s/foo/bar/;	# replaces foo with bar in $a
	$a =~ s/foo/bar/g;	# replaces ALL INSTANCES of foo with bar
				# in $a
				
# Writing subroutines

	sub logger {
		my $logmessage = shift;
		open my $logfile, ">>", "my.log" or die "Could not open my.log: $!";
		print $logfile $logmessage;
}

sub square {
	my $num = shift;
	my $result = $num * $num;
	return $result;
}


# Using Perl modules




