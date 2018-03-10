#!/usr/bin/fish

function build
	cd pcb
	fish pack.fish $argv[1] keyboard
	fish pack.fish $argv[1] sidebutton
	cp keyboard/keyboard.zip ../
	cp sidebutton/sidebutton.zip ../
	cd ../

	mkdir .build
	mkdir .build/pcb
	cp keyboard.zip .build/pcb
	cp sidebutton.zip .build/pcb
	mkdir .build/stl
	cp things/*.stl .build/stl
	cd .build
	zip -r 4x6t2-$argv[1].zip pcb stl
	cp 4x6t2-$argv[1].zip ../
	cd ../
	rm -r .build
end

build fusionpcb
build elecrow
