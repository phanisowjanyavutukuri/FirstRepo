echo "hi sowjanya"
cat que
cat que | while read line
do
some="/home/ubuntu/$line"
mkdir -p  $some
echo "$line"
done
