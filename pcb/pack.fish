#!/usr/bin/fish
# this script support fusionpcb and elecrow

set vender $argv[1]
set basename $argv[2]

echo "vender:" $vender
echo "board :" $basename

if test $basename = 'keyboard' -o $basename = 'sidebutton'

	cd $basename
	cp $basename-B.Cu.gbl      $basename.gbl
	cp $basename-B.Mask.gbs    $basename.gbs
	cp $basename-B.SilkS.gbo   $basename.gbo
	cp $basename-F.Cu.gtl      $basename.gtl
	cp $basename-F.Mask.gts    $basename.gts
	cp $basename-F.SilkS.gto   $basename.gto
	cp $basename-Edge.Cuts.gm1 $basename.gm1
	if test $vender = 'fusionpcb'
		set generated_files \
			$basename.gbl \
			$basename.gbs \
			$basename.gbo \
			$basename.gm1 \
			$basename.gtl \
			$basename.gts \
			$basename.gto
		zip $basename $generated_files $basename.drl
	else if test $vender = 'elecrow'
		cp $basename.drl $basename.txt
		set generated_files \
			$basename.gbl \
			$basename.gbs \
			$basename.gbo \
			$basename.gm1 \
			$basename.gtl \
			$basename.gts \
			$basename.gto \
			$basename.txt
			zip $basename $generated_files
	else if test $vender = 'allpcb'
		cp $basename.drl $basename.txt
		cp $basename.gm1 $basename.gko
		set generated_files \
			$basename.gbl \
			$basename.gbs \
			$basename.gbo \
			$basename.gm1 \
			$basename.gtl \
			$basename.gts \
			$basename.gto \
			$basename.gko \
			$basename.txt
			zip $basename $generated_files
	else
		echo 'wrong vender specification'
	end
	rm $generated_files

else if test basename = '-h' -o basename = '--help'
	echo 'fish pack.fish [keyboard|sidebutton]'
else
	echo 'wrong pcb name'
end
