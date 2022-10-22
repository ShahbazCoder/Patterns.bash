echo -n "Enter the no. of Rows : "
read row

echo "---------------------------"
echo "1st Pattern"
for ((i = 1; i <= row; i++)); do
    for ((j = 1; j <= i; j++)); do
        echo -n "* "
    done
    echo
done

echo "---------------------------"
echo "2nd Pattern"
for ((i = 1; i <= row; i++)); do
    for ((j = row; j >= i; j--)); do
        echo -n "* "
    done
    echo
done

echo "---------------------------"
echo "3rd Pattern"
for ((i = 1; i <= row; i++)); do
    for ((j = 1; j <= row; j++)); do
        if [ $(($i + $j)) -le $row ]; then
            echo -n " "
        else
            echo -n "*"
        fi
    done
    echo
done

echo "---------------------------"
echo "4th Pattern"
for ((i = 1; i <= row; i++)); do
    for ((j = 1; j <= row; j++)); do
        if [ $(($i - $j)) -ge 1 ]; then
            echo -n " "
        else
            echo -n "*"
        fi
    done
    echo
done

echo "---------------------------"
echo "5th Pattern"
for ((i = 1; i <= row; i++)); do
    for ((j = 1; j <= i; j++)); do
        echo -n "$j "
    done
    echo
done

echo "---------------------------"
echo "6th Pattern"
for ((i = 1; i <= row; i++)); do
    for ((j = 1; j <= i; j++)); do
        echo -n "$i "
    done
    echo
done

echo "---------------------------"
echo "7th Pattern"
n=1
for ((i = 1; i <= row; i++)); do
    for ((j = 1; j <= i; j++)); do
        echo -n "$n "
        n=$(($n + 1))
    done
    echo
done

echo "---------------------------"
echo "8th Pattern"
for ((i = 1; i <= row; i++)); do
    for ((space = 0; space <= ($row - $i); space++)); do
        echo -n " "
    done
    for ((j = 1; j <= (2 * $i) - 1; j++)); do
        echo -n "*"
    done
    echo
done
