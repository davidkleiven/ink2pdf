include installPaths.mk

test:
	./ink2pdf ExampleFig/profile.ps_tex

install: test
	cp ink2pdf ${INSTALLPATH}
