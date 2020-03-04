exclude() {
  directory="$1"
  excluded_directories_filename="$2"

  while read -r excluded_directory
  do
    if [[ "$directory" = "$excluded_directory" ]];
    then
      return 0
    fi
  done < "$excluded_directories_filename"

  return 1
}


for directory in */
do
  echo ">>> ${directory%/}"

  if exclude "$directory" aautils/.excluded; then
    printf "Excluded\n\n"
    continue
  fi

  cd "$directory" || (echo "Could not change directory!" && exit)

  echo "$@"
  $@;

  cd ..
  echo

done
