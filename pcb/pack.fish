#!/usr/bin/fish
# this script support fusionpcb and elecrow
set vender fusionpcb

set basename $argv[1]

if test $basename = 'keyboard' -o $basename = 'sidebutton'

	cd $basename
	cp $boardname-B.Cu.gbl      $basename.gbl
	cp $boardname-B.Mask.gbs    $basename.gbs
	cp $boardname-B.SilkS.gbo   $basename.gbo
	cp $boardname-F.Cu.gtl      $basename.gtl
	cp $boardname-F.Mask.gts    $basename.gts
	cp $boardname-F.SilkS.gto   $basename.gto
	cp $boardname-Edge.Cuts.gm1 $basename.gm1
	if test $vender = 'fusionpcb'
		set generated_files \
			$basename.gbl \
			$basename.gbs \
			$basename.gbo \
			$basename.gm1 \
			$basename.gtl \
			$basename.gts \
			$basename.gto
	else if test $vender = 'elecrow'
		cp $basename.drl $boardname.txt
		set generated_files \
			$basename.gbl \
			$basename.gbs \
			$basename.gbo \
			$basename.gm1 \
			$basename.gtl \
			$basename.gts \
			$basename.gto \
			$basename.txt
	else
		echo 'wrong vender specification'
	end
	zip $basename $generated_files
	rm $generated_files

else if test basename = '-h' -o basename = '--help'
	echo 'fish pack.fish [keyboard|sidebutton]'
else
	echo 'wrong pcb name'
end
