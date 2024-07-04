build-right:
	rm -rf ~/dev/zmk/app/boards/shields/swoop
	cp -r ~/dev/zmk-swoop/config/boards/shields/swoop ~/dev/zmk/app/boards/shields/
	( cd ~/dev/zmk/app && west build --build-dir ~/dev/zmk-swoop/build/right \
	--board nice_nano_v2 -- -DSHIELD=swoop_right )
	cp ~/dev/zmk-swoop/build/right/zephyr/zmk.uf2 ~/dev/zmk-swoop/swoop_right.uf2

build-left:
	rm -rf ~/dev/zmk/app/boards/shields/swoop
	cp -r ~/dev/zmk-swoop/config/boards/shields/swoop ~/dev/zmk/app/boards/shields/
	( cd ~/dev/zmk/app && west build --build-dir ~/dev/zmk-swoop/build/left --board nice_nano_v2 -- -DSHIELD=swoop_left )
	cp ~/dev/zmk-swoop/build/left/zephyr/zmk.uf2 ~/dev/zmk-swoop/swoop_left.uf2
