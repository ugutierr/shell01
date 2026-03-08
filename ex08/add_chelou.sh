

NBR1=$(printf "%s" "$FT_NBR1" | sed 's/'"'"'/0/g' | sed 's/\\/1/g' | sed 's/"/2/g' | sed 's/?/3/g' | sed 's/!/4/g') #'\"?! 
NBR2=$(echo "$FT_NBR2" | tr "mrdoc" "01234")

NBR1_10=$(echo "obase=10; ibase=5; ${NBR1}" | bc)
NBR2_10=$(echo "obase=10; ibase=5; ${NBR2}" | bc)

RES="$(echo "obase=13; ibase=5; "$NBR1 + "$NBR2" | bc)"


RES_13=$(echo "obase=13; ibase=10; ${RES}" | bc)



FT_RES=$(echo "$RES" | tr "0123456789ABC" "gtaio luSnemf")

echo "$FT_RES"