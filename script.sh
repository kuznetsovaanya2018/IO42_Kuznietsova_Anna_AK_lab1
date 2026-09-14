#!/bin/bash
target_dir="$1"
for item in "$target_dir"/*; do
	if [ -d "$item" ]; then
		current_dirname=$(basename "$item")
		echo "$current_dirname is a directory"

	elif [ -f "$item" ]; then
		current_filename=$(basename "$item")
		new_dir="${current_filename}_dir"

		mkdir "$target_dir/$new_dir"
		mv "$item" "$target_dir/$new_dir/"

		echo "$current_filename moved"

	fi

done
