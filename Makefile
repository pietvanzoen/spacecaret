

install:
	luarocks install love-release
	luarocks install luacheck

lint:
	luacheck src

release:
	rm -rf releases
	love-release -M

test:
	lua **/*.test.lua
