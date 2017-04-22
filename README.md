Simple tool to populate placeholders in a template file

How to run
replaceTokens.sh - script to replace the placeholders in the template file with values from a data file
$ ./replaceTokens.sh input/index.html conf/test.properties output/index.html
[format] .replaceToken.sh <template_file> <data_file> <output_file>

Folder structure
-/input
  index.html (template file with placeholders) 

 /output
   index.html (final output)
 
 /conf
   test.properties (date file defining a collection of key/value pairs)

Notes:
Script should be executable.
$ chmod 700 replaceTokens.sh

