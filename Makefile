all:
	cd deepspeech && makepkg
	cd python2-deepspeech && makepkg

clean:
	rm -rf deepspeech/{src,pkg,*.pkg.tar.xz}
	rm -rf python2-deepspeech/{src,pkg,*.pkg.tar.xz}
