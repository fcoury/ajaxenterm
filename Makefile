build:
	true

install:
	install -d "/usr/local/bin"
	install -d "/usr/local/share/ajaxterm"
	install ajaxterm.bin "/usr/local/bin/ajaxterm"
	install ajaxterm.initd "/etc/init.d/ajaxterm"
	install -m 644 ajaxterm.css ajaxterm.html ajaxterm.js qweb.py sarissa.js sarissa_dhtml.js "/usr/local/share/ajaxterm"
	install -m 755 ajaxterm.py "/usr/local/share/ajaxterm"
	gzip --best -c ajaxterm.1 > ajaxterm.1.gz
	install -d "/usr/local/share/man/man1"
	install ajaxterm.1.gz "/usr/local/share/man/man1"

clean:
	rm ajaxterm.bin
	rm ajaxterm.initd
	rm ajaxterm.1.gz
	rm Makefile

