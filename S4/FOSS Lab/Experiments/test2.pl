    use strict;
    use warnings;
    my $s1  = $ARGV[0];
    my $s2 = $ARGV[1];
    my $filename = $ARGV[2];
    unless (-e $filename) {
	 my $a = $filename;
    	 $a =~ s/$s1/$s2/gi;
    	 print "$a";
    }
    if(-e $filename)
    {
	    print "$s1,$s2";
	    my $data = read_file($filename);
	    $data =~ s/$s1/$s2/g;
	    write_file($filename, $data);
	    exit;
	     
	    sub read_file {
		my ($filename) = @_;
	     
		open my $in, '<:encoding(UTF-8)', $filename or die "Could not open '$filename' for reading $!";
		local $/ = undef;
		my $all = <$in>;
		close $in;
	     
		return $all;
	    }
	     
	    sub write_file {
		my ($filename, $content) = @_;
	     
		open my $out, '>:encoding(UTF-8)', $filename or die "Could not open '$filename' for writing $!";;
		print $out $content;
		close $out;
	     
		return;
	    }
     }
