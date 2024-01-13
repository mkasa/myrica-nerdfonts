all:
	echo "This script works only for macOS. wget must be installed."
	echo ""
    echo "Usage:"
	echo "    make pre              (install 7zip and fontforge using Homebrew)"
	echo "    make install          (download Myrica, patch it with Font Nerds, install the patched font)


pre:
	brew install p7zip fontforge

install: MyricaMonospace\ Nerd\ Font.ttc
	open "$^"

MyricaMonospace\ Nerd\ Font.ttc: Myrica.TTC
	fontforge -script fp/font-patcher -c $^

Myrica.TTC: Myrica.7z
	7z e $^
	touch $@

Myrica.7z:
	wget https://github.com/tomokuni/Myrica/raw/master/product/Myrica.7z

fp/font-patcher: FontPatcher.zip
	mkdir -p fp
	cd fp && unzip ../FontPatcher.zip
	touch $@

FontPatcher.zip:
	wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FontPatcher.zip
