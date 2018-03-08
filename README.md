
# Transforming danMARC2 from aleph xserver into other stuff

There should be tools like these out there, but we haven't found them. So we cooked some stuff ourselves long ago for some projects we were working with then.

Other stuff is like marc21 and mods

1. oaimarc2slimmarc.xsl is written by me, and implements most important parts of http://biblstandard.dk/kat/konv_danmarc2_to_marc21.htm

2. marcToMODS.xsl comes to you from Library of Congress and works with the result from oaimarc2slimmarc.xsl. The version here is hacked to handle namePart data in a smarter way to MODS. Or perhaps I should say that it gives name/namePart the way I want them.

I don't even pretend that this is complete. There are quite a few (more or less proprietary) fields that are not translated because I do not feel they don't seem useful for resource discovery, and there are other fields or constructs that I didn't know existed. Let me if you need something. 

Have fun ;^/




