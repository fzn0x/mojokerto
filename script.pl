#!/usr/bin/perl
use v5.34;

my $name = "Fauzan";
my @hobbies = ("programming", "gaming", "joking");

my $bio = {
    "age" => 21
};

my @sortedHobbies = sort @hobbies;

print "Hello, I'm $name, my hobbies is @sortedHobbies, I'm $bio->{'age'} years old. \n"; 

if ( $name == "Fauzan" ) {
    print "You are administrator!\n";
} elsif ( $name == "Guest" ) {
    print "You are not Fauzan!\n";
} else {
    print "Who are you?\n";
}