#!/bin/sh

OAIMARC2SLIMMARC="./oaimarc2slimmarc.xsl"

for file in samples/*xml ; do
    echo item: $file
    
    xsltproc $OAIMARC2SLIMMARC $file  > `basename $file .xml`.marc
    xsltproc marcToMODS.xsl `basename $file .xml`.marc > `basename $file .xml`.mods
    xmllint --noout --schema mods-3-7.xsd `basename $file .xml`.mods

done


#


