INPUTFILE=
SPEC_HTML=./stylesheets/oasis-specification-html-offline.xsl
SPEC_FO=./stylesheets/oasis-specification-fo-a4.xsl

%.html: %.xml
	xsltproc ${SPEC_HTML}  $< > $@

%.pdf: %.fo
	fop $< $@

%.fo: %.xml
	xsltproc ${SPEC_FO} $< > $@

all: spec-1.1.X.html spec-1.1.X.pdf 
clean:
	rm spec-1.1.X.pdf
	rm spec-1.1.X.html

