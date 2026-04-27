#!/bin/bash

file="$1"
newext="$2"

# Проверяем, что параметры переданы
if [[ -z "$file" || -z "$newext" ]]; then
    echo "Usage: $0 filename new_extension"
    exit 1
fi

# Проверяем, есть ли точка в имени файла
if [[ "$file" == *.* ]]; then
    # если есть 
    # ${file%.*} — удалить всё после последней точки
    base="${file%.*}"
    echo "${base}.${newext}"
else
    # Если расширения нет
    echo "Файл не имеет расширения. Добавляю новое:"
    echo "${file}.${newext}"
fi
