#!/bin/bash

string="$1"
start="$2"
end="$3"
mode="$4"   # extract | delete

if [[ -z "$string" || -z "$start" || -z "$end" ]]; then
    echo "Usage: $0 \"string\" start end [extract|delete]"
    exit 1
fi

# cut работает с диапазоном символов: cut -c start-end
substr=$(echo "$string" | cut -c ${start}-${end})

if [[ "$mode" == "delete" ]]; then
    # Удаляем найденную подстроку
    echo "${string/$substr/}"
else
    # Извлекаем найденную подстроку
    echo "$substr"
fi
