copy-config:
	rm -rf ~/dev/zmk/app/boards/shields/swoop
	cp -r ~/dev/zmk-swoop/config/boards/shields/swoop ~/dev/zmk/app/boards/shields/
	rm -rf ~/dev/zmk/app/boards/shields/swoop/swoop.keymap
	cp  ~/dev/zmk-swoop/config/boards/shields/swoop/swoop.keymap ~/dev/zmk/app/boards/shields/swoop/

build-right:
	make copy-config
	( cd ~/dev/zmk/app && west build --build-dir ~/dev/zmk-swoop/build/right \
	--board nice_nano_v2 -- -DSHIELD=swoop_right )
	rm -rf ~/dev/zmk-swoop/swoop_right.uf2
	cp ~/dev/zmk-swoop/build/right/zephyr/zmk.uf2 ~/dev/zmk-swoop/swoop_right.uf2

build-left:
	make copy-config
	( cd ~/dev/zmk/app && west build --build-dir ~/dev/zmk-swoop/build/left --board nice_nano_v2 -- -DSHIELD=swoop_left )
	rm -rf ~/dev/zmk-swoop/swoop_left.uf2
	cp ~/dev/zmk-swoop/build/left/zephyr/zmk.uf2 ~/dev/zmk-swoop/swoop_left.uf2
