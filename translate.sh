for line in $(cat words.txt); 

  do echo "- - - - - - - -";
  echo "$line";

  A="$(cut -d':' -f1 <<<"$line")"
  echo "$A"

  B="$(cut -d':' -f2 <<<"$line")"
  echo "$B"

  cd /Users/fernando/projetos/shell/loop/html/subpasta/;
  
  sed $file -i '.bkp' 's/'$A'/'$B'/g' *.html

done 

find . -name \*.bkp -delete