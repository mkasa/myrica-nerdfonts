all: MyricaMonospace\ Nerd\ Font.ttc

install: MyricaMonospace\ Nerd\ Font.ttc: Myrica.TTC
	open $^

MyricaMonospace\ Nerd\ Font.ttc: Myrica.TTC
	fontforge -script fp/font-patcher $^

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
