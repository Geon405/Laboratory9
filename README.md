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

part2.pl
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


Part III:

part3.pl

2. Use regex in Perl to validate telephone numbers in Canada/US: starting with +1, followed
by 10 digits, optional spaces and dashes separators. Your script should carry 3 examples of
valid and 3 examples of invalid numbers, plus validate the string passed as first argument.

3. In the shell, create a user with login “peter”, and make sure you include personal
information during user creation. Open the file that hosts information about users in a Unix
system and observe how the information is presented for the user you’ve just created. Now
in a Perl script, check if there is a user named “peter” in the current machine, and if yes,
output the following information.

    Output:
        User id: 1001
        Full name: Peter Jonhson
        Home directory: /home/peter
        Shell: /bin/bash

4. Improve your script to accept the login as an argument. If it is called with arguments, the
regex should consider the first argument, otherwise, use can use “peter” as the default user
to search.
