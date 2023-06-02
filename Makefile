package:
	./package-prepare-source
	(cd nginx-healthcheck-1.24.0; debspawn build bionic --sign --only source --results-dir $(PWD))

clean:
	rm -f *.build *.buildinfo *.changes *.ddeb *.dsc *.upload *.debian.tar.xz
	rm -fr nginx-healthcheck-1.24.0
