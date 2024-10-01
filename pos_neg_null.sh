#!/bin/bash

# Запрашиваем у пользователя число
read -p "enter please number: " number

# Проверяем, является ли число положительным, отрицательным или нулем
if [ $number -gt 0 ]; then
    echo "number pos"
elif [ $number -lt 0 ]; then
    echo "number => neg"
else
    echo "number => 0"
fi
