#!/bin/bash

echo "Converting data..."
LC_ALL=C sed 's/ *[\x00-\x19\x7B\x7D-\xBF]\+ */ /g' data.csv |
  sed 's/ *" */"/g' |
  iconv -f iso-8859-1 -t UTF-8 > enc_data.csv
