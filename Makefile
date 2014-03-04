INPUTFILE=
SPEC_HTML=./stylesheets/oasis-specification-html-offline.xsl
SPEC_FO=./stylesheets/oasis-specification-fo-a4.xsl

%.html: %.xml
	xsltproc ${SPEC_HTML}  $< > $@

%.pdf: %.fo
	fop $< $@

%.fo: %.xml
	xsltproc ${SPEC_FO} $< > $@

all: spec-2.0.html spec-2.0.pdf 
clean:
	rm spec-2.0.pdf
	rm spec-2.0.html

