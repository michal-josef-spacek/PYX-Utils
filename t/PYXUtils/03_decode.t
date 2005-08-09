# $Id: 03_decode.t,v 1.1 2005-08-09 06:46:44 skim Exp $

print "Testing: decode function.\n" if $debug;
my $str = "a\nb";
my $out_str = eval $class.'::decode($str)';
ok($out_str, 'a\nb');
