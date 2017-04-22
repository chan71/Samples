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

Example:
/var/tmp/input/index.html:
<html>
<head>
  <title>[[title]]</title>
</head>
<body>
  Hi! You are in the [[environment]] environment!
</body>
</html>

/var/tmp/conf/test.properties:
title=You are in the test environment!
environment=Testing

/var/tmp/conf/prod.properties:
title=Welcome
environment=Production

Suppose you are in the directory /var/tmp/scripts/
Running ./replaceTokens.sh ../input/index.html ../conf/test.properties ../output/index.html 
will give you /var/tmp/output/index.html:
<html>
<head>
  <title>You are in the test environment!</title>
</head>
<body>
  Hi! You are in the Testing environment!
</body>
</html>

Running ./replaceTokens.sh ../input/index.html ../conf/prod.properties ../output/index.html 
will give you /var/tmp/output/index.html:
<html>
<head>
  <title>Welcome</title>
</head>
<body>
  Hi! You are in the Production environment!
</body>
</html>
