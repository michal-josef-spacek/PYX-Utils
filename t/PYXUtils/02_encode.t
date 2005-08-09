# $Id: 02_encode.t,v 1.1 2005-08-09 06:46:44 skim Exp $

print "Testing: encode function.\n" if $debug;
my $str = 'a\nb';
my $out_str = eval $class.'::encode($str)';
ok($out_str, "a\nb");
