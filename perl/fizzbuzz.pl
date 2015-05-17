#!/usr/bin/perl

for ($i = 1; $i <= 100; $i++) {
    $ijustfizzedinmybuzz = 0;
    if ($i % 3 == 0) {
        print "Fizz";
        $ijustfizzedinmybuzz = 1;
    }
    if ($i % 5 == 0) {
        $ijustfizzedinmybuzz = 1;
        print "Buzz";
    }
    if ($ijustfizzedinmybuzz == 0) {
        print $i;
    }
    eval "print \"
\"";
}
