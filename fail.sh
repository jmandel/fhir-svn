#!/bin/bash
set -ev

echo "Failed"
df -h
wc -l temp/profiles-resources-tmp.xml
echo "error dump:"
cat fhir-error-dump.txt
curl -H "Content-Type: text/xml"  --data-binary @temp/profiles-resources-tmp.xml http://fhir.me:9999
md5sum temp/profiles-resources-tmp.xml
exit 1

