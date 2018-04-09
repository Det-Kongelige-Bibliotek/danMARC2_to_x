#!/bin/sh

OAIMARC2SLIMMARC="./oaimarc2slimmarc.xsl"

for file in samples/*xml ; do
    echo item: $file

    saxonb-xslt -xsl:$OAIMARC2SLIMMARC -s:$file -o:`basename $file .xml`.marc
    xsltproc marcToMODS.xsl `basename $file .xml`.marc > `basename $file .xml`.mods
    xmllint --noout --schema mods-3-7.xsd `basename $file .xml`.mods

done


#


