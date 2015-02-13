#!/bin/bash
set -ev

echo "error dump:"
cat fhir-error-dump.txt
curl -H "Content-Type: text/xml"  --data-binary @temp/profiles-resources-tmp.xml http://fhir.me:9999
exit 1

