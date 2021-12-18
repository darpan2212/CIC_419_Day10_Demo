#read -p "Enter the value of a: " a;
#read -p "Enter the value of b: " b;
#read -p "Enter the value of c: " c;

a=$((RANDOM%90+10));
b=$((RANDOM%90+10));
c=$((RANDOM%90+10));

echo $a $b $c;

expr[0]=$(($a+$b*$c));
expr[1]=$(($a*$b+$c));
expr[2]=$(($c+$a/$b));
expr[3]=$(($a%$b+$c));

echo ${expr[@]};