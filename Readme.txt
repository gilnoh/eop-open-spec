This directory holds EXCITEMENT project specification docbook sources and previous releases. 

* Status 
>> We are currently editing spec-1.1.X.xml << 

* Previous versions 
- r159: Specification 1.1 -- internal development release
- r128: Specification 1.0 -- Deliverable 3.1a
- r98 : 1.0 Draft 
- r43: alpha version -- (May 1 version) 

----- 
-----

* How to compile the DocBook XML into HTML or PDF? 
Use "xsltproc" and "fop". 

** Generating HTML from the docbook source 
$ xsltproc [stylesheet-name] [Docbook file-name]
For example; 
$ xsltproc ./stylesheets/oasis-specification-html.xsl spec-draft-alpha.xml > spec.html 

** Generating PDF from the docbook source  
In two steps: first generate XML-FO file with xsltproc, then use fop to convert fo file into a PDF. 
$ xsltproc [stylesheet-name] [Docbook file-name] 
$ fop [xml-fo-filename] [pdf-name to generate)
For example; 
$ xsltproc ./stylesheets/oasis-specification-fo-a4.xsl spec-draft-alpha.xml > spec.fo 
$ fop spec.fo spec.pdf 
(They say that FOP can directly process XML to PDF, but it seems that it does not work very well in current distribution)

** Where to get XLSTPROC and FOP? 
On Debian: just install "DocBook" meta package. Both xlstproc & fop can be called from the terminal. 
On MAC OSX, if you install Developement Kit (XCode), XLSTPROC is automatically installed. For FOP, visit FOP homepage (http://xmlgraphics.apache.org/fop/) and download the Java binary distribution. It includes the shell script (named "fop") that will run FOP. 

---- 

* Files & Directories 

** logo.png 
This file is EXCITEMENT logo that is identical with the one used in the official web page. The file is needed to generate FO files and offline HTML files from the DocBook text. 

** (TO BE REMOVED) spectools-docbook-template-wd03.xml 
We have borrowed some styles and files from the OASIS format --- this is OASIS specification template. 

** spec-draft-alpha.xml 
The version that we work until May plenary meeting. We will freeze it as we ship out the first draft to the partners. 

** (NOT YET) spec-draft-beta.xml 
The version that we work on, after May plenary meeting. This will evolve into 1.0. 

** /css 
This directory holds DocBook basic CSS stylesheets. 

** /docbook
This directory holds DocBook official XMLs and DTD files 

** /stylesheets
This directory holds specific stylesheet for the specification. We are using a modified version of OASIS stylesheets. 

