#!/usr/bin/perl

open(DATA,"<../locate_wav.txt") or die "Couldn't open locate_wav";
@data1 = <DATA>;
$size1 = @data1;

open(DATA,"<../new_wav.txt") or die "Couldn't open new_wav";
@data2 = <DATA>;
$size2 = @data2;

open(my $fh,'>','../execute.txt') or die "Couldn't open hmmdef";

for(my $i=0;$i<$size1;$i++){
	chomp($data1[$i]);
	chomp($data2[$i]);
	$base = "sox ";
	$base .= $data1[$i];
	$base .= " -t raw - | sox -t raw -e signed -b 16 -c 1 -r 16000 - ";
	$base .= $data2[$i];
	print $fh "$base\n";
	#sox sample2.wav -t raw | sox -t raw -e signed -b 16 -c 1 -r 16000 - sample2.wav
	#sox in.wav -t raw - | sox -t raw -e signed -b 16 -c 2 -r 44100 - out.wav 	
}



