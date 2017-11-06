#!bin/bash
echo "the files in the dir are"
mkdir /home/ubuntu/sample
k="/home/ubuntu/sample/*"
for i in /home/ubuntu/sss/*
do
for j in "$i"/*
do
if [[ -f $i ]] ; then
echo "$i"
cp $i $k
fi
if  [[ -d $i ]] ; then
echo "$j"
cp -r $i $k
fi 
done
done

