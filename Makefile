# Default action is to show this help message:
.help:
	@echo "Possible targets:"
	@echo "  dat            Generate strfile dat files"
	@echo "  package        Build package"
	@echo "  upload-test    Upload the package to TestPyPi"
	@echo "  upload         Upload the package to PyPi"
	@echo "  distclean      Remove all generated files"

dat: normal commented rotated

normal:
	strfile data/V7-fortunes
	strfile data/32V-fortunes
	strfile data/3BSD-fortunes
	strfile data/4BSD-fortunes
	strfile data/4.1cBSD-fortunes
	strfile data/4.2BSD-fortunes
	strfile data/V8-fortunes
	strfile data/4.3BSD-fortunes
	strfile data/Net2-fortunes
	strfile data/Net2-startrek
	strfile data/Net2-zippy
	strfile data/2.11BSD-fortunes
	strfile data/4.4BSD-fortunes
	strfile data/4.4BSD-fortunes2
	strfile data/4.4BSD-limerick
	strfile data/4.4BSD-startrek
	strfile data/4.4BSD-zippy

commented:
	strfile -C data/2.9BSD-fortunes

rotated:
	strfile -x data/4.1cBSD-fortunes-o
	strfile -x data/4.2BSD-fortunes-o
	strfile -x data/2.9BSD-fortunes-o
	strfile -x data/4.3BSD-fortunes-o
	strfile -x data/Net2-fortunes-o
	strfile -x data/2.11BSD-fortunes-o
	strfile -x data/4.4BSD-fortunes-o
	strfile -x data/4.4BSD-fortunes2-o

love:
	@echo "Not war!"

package: dat
	python -m build

upload-test:
	python -m twine upload --repository testpypi dist/*

upload:
	python -m twine upload dist/*

distclean:
	rm -rf build dist data/*.dat *.egg-info
