print "Testing: decode function.\n" if $debug;
my $str = "a\nb";
my $out_str = eval $class.'::decode($str)';
ok($out_str, 'a\nb');
