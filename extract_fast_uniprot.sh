#!/bin/bash
# curl -H "Accept: text/plain; format=flatfile" "https://rest.uniprot.org/uniprotkb/Q8IQQ4"
# curl https://rest.uniprot.org/uniprotkb/Q8IQQ4.fasta

input="/home/giray/workspace/ppi/intact2016/celeg.txt"
while IFS= read -r line
do
  echo "$(curl --silent https://rest.uniprot.org/uniprotkb/"$line".fasta)"
  echo ""
done < "$input"
