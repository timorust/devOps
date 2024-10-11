#!/bin/bash
echo "enter firsr number:"
read num1
echo "Enter ssecond number:"
read num2
echo "enter tride number:"
read num3

result=$((num1 * num2 / num3))

echo "Equal $num1 * $num2 / $num3 => $result."
