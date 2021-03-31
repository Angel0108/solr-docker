#!/bin/bash

echo "Charge data $1.."

curl 'http://127.0.0.1:8983/solr/filmscore/update?commit=true' --data-binary @$1 -H 'Content-type:application/csv'
