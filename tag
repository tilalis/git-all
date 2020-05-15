params="$@"

if [[ -z "$params" ]]; then
    echo "Cannot create an empty tag!"
    exit 1
fi

aautils/.ead.sh git tag $params