#!/bin/bash

cat <<_EOF
{
  "Trinity": "$(which Trinity)",
  "fastq-dump": "$(which fastq-dump)",
  "chromedriver": "http://127.0.0.1:4444/wd/hub"
}
_EOF