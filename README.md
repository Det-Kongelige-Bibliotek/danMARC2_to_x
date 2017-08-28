
# Transforming danMARC2 from aleph xserver into other stuff

There should be tools like these out there, but we haven't found them. So we cooked some stuff ourselves long ago for some projects we were working with then.

Other stuff is like marc21 and mods

1. oaimarc2slimmarc.xsl is written by me, and implements most important parts of http://biblstandard.dk/kat/konv_danmarc2_to_marc21.htm
2. marcToMODS.xsl comes to you from Library of Congress and works with the result from oaimarc2slimmarc.xsl

There are quite a few (more or less proprietary) fields that are not translated.

Have fun ;^/




