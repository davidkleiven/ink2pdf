include installPaths.mk

test:
	./ink2pdf ExampleFig/profil1e.ps_tex

install: test
	cp ink2pdf $INSTALLPATH
