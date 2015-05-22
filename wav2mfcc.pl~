#!/usr/bin/perl

open(DATA,"<temp_codetr1.txt") or die "Couldn't open temp_codetr1";
@data1 = <DATA>;
$size1 = @data1;

open(DATA,"<temp_codetr2.txt") or die "Couldn't open temp_codetr2";
@data2 = <DATA>;
$size2 = @data1;

open(my $fh,'>','codetr.scp') or die "Couldn't open codetr";

for(my $i=0;$i<$size1;$i++){
	chomp($data1[$i]);
	chomp($data2[$i]);
	$base1 = "";
	$base2 = "";
	$base1 .= $data1[$i];
	$base2 .= $data2[$i];
	$base1 .= ".wav";
	$base2 .= ".mfc";
	$base1 .= "            ";
	$base1 .= $base2;
	print $fh "$base1 \n";	
}
