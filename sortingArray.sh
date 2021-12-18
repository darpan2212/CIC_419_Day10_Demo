
#generating 3 random numbers in place of taking user input
a=$((RANDOM%90+10));
b=$((RANDOM%90+10));
c=$((RANDOM%90+10));

echo "Random numbers : " $a $b $c;

expr[0]=$(($a+$b*$c));
expr[1]=$(($a*$b+$c));
expr[2]=$(($c+$a/$b));
expr[3]=$(($a%$b+$c));

echo "Before sorting an array : "${expr[@]};

for ((i=0;i<${#expr[@]};i++))
do
	for ((j=i+1;j<${#expr[@]};j++))
	do
		if [ ${expr[$i]} -lt ${expr[$j]} ]
		then
			temp=${expr[$i]};
			expr[$i]=${expr[$j]};
			expr[$j]=$temp;
		fi
	done
done

echo "After sorting an array (Descending) : "${expr[@]};