# Initialize repository tools.
init:
	# Create symlink for pre-commit hook.
	ln -sf ../../tool/pre-commit.sh .git/hooks/pre-commit
	make create-favicon

download-noto:
	wget https://noto-website.storage.googleapis.com/pkgs/NotoSans-hinted.zip
	mkdir -p ./web/styles/fonts/NotoSans
	unzip NotoSans-hinted.zip -d ./web/styles/fonts/NotoSans
	rm NotoSans-hinted.zip

create-favicon:
	inkscape web/images/original/eqdb-icon.svg --export-png=16.png -w16 -h16
	inkscape web/images/original/eqdb-icon.svg --export-png=24.png -w24 -h24
	inkscape web/images/original/eqdb-icon.svg --export-png=32.png -w32 -h32
	inkscape web/images/original/eqdb-icon.svg --export-png=64.png -w64 -h64
	inkscape web/images/original/eqdb-icon.svg --export-png=128.png -w128 -h128
	inkscape web/images/original/eqdb-icon.svg --export-png=256.png -w256 -h256
	convert 16.png 24.png 32.png 64.png 128.png 256.png web/favicon.ico
	rm 16.png 24.png 32.png 64.png 128.png 256.png
