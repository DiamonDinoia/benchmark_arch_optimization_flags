
for entry in $(ls ./build)
do
  echo $entry
  ./build/$entry
done
