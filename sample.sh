

#!/bin/bash  
read -p "enter"  var1
read -p "enter" var2
echo $var1
echo "$var2"
if [[ ! -d "$var1" ]]; then
echo "error"
fi
if [[ ! -d "$var2" ]]; then
 
mkdir $var2
cp -r $var1 $var2

fi
