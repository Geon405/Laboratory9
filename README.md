# Laboratory9

Part I: Introduction to Perl

part1.pl
a) Basic syntax overview
b) Perl variable types: sscalars ($), arrays (@), hashes (%)
    More on Perl special variables in perldoc perlvar
c) Variable scoping: my for scoped variables (recommended)
d) Conditional and looping constructs: if/unless, while/until, for, foreach
e) Builtin operators and functions
f) Files and I/O
g) Regular expressions
h) Writing subroutines
i) Using Perl modules


Part II: Create and execute Perl scripts

1. Create a script.pl file that when executed produces the same output as the shell command
“echo “Hello World”;date”. Hint: install the package libdatetime-perl, and check if the
following snippet of code is of any help.

2. In Perl, you can access environment variables by using $ENV{VAR} to have the output of
unix commands, you can use backsticks (eg. my $files = `ls`); and to remove the last trailing
newline from the input string you can call the function chomp givin the variable you want ot
clean as an argument (eg. chomp($hostname)). Rewrite in Perl the greetings script from
lab9. The output should be in the format:

3. In Perl, command line arguments are accessible through the array ARGV. Attention:
$ARGV[0] is the first argument, the script name is stored at $0. Your script should add two
numbers, given as parameters to the script call through the command line.
