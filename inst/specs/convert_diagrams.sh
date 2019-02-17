  for file in *.yml
    do
      iconv -t ASCII//TRANSLIT $file -o $file
    done
