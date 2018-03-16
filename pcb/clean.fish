#!/usr/bin/fish

set basename $argv[1]

echo "board :" $basename

if test $basename = 'keyboard' -o $basename = 'sidebutton'
	rm -f $basename/$basename-*
	rm -f $basename/$basename.net
	rm -f $basename/$basename.drl
	rm -f $basename/*bak
else if test basename = '-h' -o basename = '--help'
	echo 'fish pack.fish [keyboard|sidebutton]'
else
	echo 'wrong pcb name'
end
