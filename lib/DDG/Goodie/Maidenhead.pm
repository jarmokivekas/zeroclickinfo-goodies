package DDG::Goodie::Maidenhead;
# ABSTRACT: Shows the area covered by a particular maidenhead locator grid on a map

use strict;
use utf8;
use DDG::Goodie;

zci answer_type => "maidenhead";
zci is_cached   => 1;

name "maidenhead";
description "Shows the area covered by a particular maidenhead locator grid on a map";
primary_example_queries "grid square NA12OA", "locator grid ae21nm", "IE23QE grid square";
category "geography";
topics "trivia";
code_url "https://github.com/duckduckgo/zeroclickinfo-goodies/blob/master/lib/DDG/Goodie/Maidenhead.pm";
attribution github => ["jarmokivekas", "Jarmo Kivekäs"];


# Triggers
triggers any => "maidenhead", "grid square", "locator grid",  "locator square", "qth";


# uses https://en.wikipedia.org/wiki/Maidenhead_Locator_System



# Handle statement
handle query_clean => sub {

    # delete noise from query string
    s/(where|is|of|show|location|grid|square|locator)//g;
    # delete the whitespace left from query noise (spaces between words)
    # only the code for the locator square should me left in the query sting
    s/^\s*|\s*$//g;

    # validate remaining string as locator gird

    # return if the string is not a locator grid
    # return unless ... ;

    # Format the locator for display

    # Add logic
    

    my $plaintext = 'test';

    return $plaintext,
        structured_answer => {
            id => 'square',
            name => 'Locator Grid',
            view => 'Map',
            model => 'Place',
            templates => {
                group => 'places',
            },
            data => {
                lat => 12.412,
                lon => 12.234,
            },
        };
    
};

1;
