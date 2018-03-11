#!/usr/bin/fish

function build
	mkdir .build
	mkdir .build/pcb
	mkdir .build/stl

	cd pcb
	fish pack.fish $argv[1] keyboard
	fish pack.fish $argv[1] sidebutton
	cd ../

	mv pcb/keyboard/keyboard.zip .build/pcb
	mv pcb/sidebutton/sidebutton.zip .build/pcb

	cp things/*.stl .build/stl
	cd .build
	zip -r 4x6t2-$argv[1].zip pcb stl
	cp 4x6t2-$argv[1].zip ../
	cd ../
	rm -r .build
end

build $argv[1]
