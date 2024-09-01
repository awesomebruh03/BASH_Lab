#!/bin/bash


is_number() {
    re='^[0-9]+([.][0-9]+)?$'
    [[ $1 =~ $re ]]
}


echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2


if ! is_number "$num1" || ! is_number "$num2"; then
    echo "Both inputs must be numbers."
    exit 1
fi


if [ "$num2" == "0" ]; then
    echo "Division by zero is not allowed."
    exit 1
fi

sum=$(echo "$num1 + $num2" | bc)
difference=$(echo "$num1 - $num2" | bc)
product=$(echo "$num1 * $num2" | bc)
quotient=$(echo "scale=2; $num1 / $num2" | bc)


echo "addition,: $sum"
echo "subtraction,: $difference"
echo "Product: $product"
echo "division: $quotient"