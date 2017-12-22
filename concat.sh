REP=""
  
for REPOS in $(cat repositorios.txt); do
    REP="$REP"" $REPOS"
done

npm link $REP

echo "$REP"

echo "FIM..." && exit