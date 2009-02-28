print "Testing: encode function.\n" if $debug;
my $str = 'a\nb';
my $out_str = eval $class.'::encode($str)';
ok($out_str, "a\nb");
