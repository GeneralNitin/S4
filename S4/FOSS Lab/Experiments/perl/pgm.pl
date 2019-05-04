#!/usr/bin/perl
open(NEW, "poem.txt");
while(<NEW>)
{
	print "$_";
}

close(NEW);


