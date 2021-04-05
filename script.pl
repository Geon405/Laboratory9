#!/usr/bin/perl

use DateTime::TizeZone::Local;

@months = qw( Jan Feb Mar Apr May Jun Aug Sep Oct Nov Dec );
@dats = qw(Sun Mon Tue Wed Thu Fri Sat Sun);

my $tz = DateTime::TimeZone::Local->TimeZone();
my $dt = DateTime->now;
my $tz_short = $tz->short_name_for_datetime($dt);
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
$year = $year+1900;
