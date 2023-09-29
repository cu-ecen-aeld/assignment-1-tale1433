

if [ "$#" -lt 2 ]; then
    echo "Error: Parameters were not specified."
    exit 1
fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]; then
    echo "Error: Given path does not represent a directory on the filesystem."
    exit 1
fi

fileCount=$(find "$filesdir" -type f | wc -l)

matching=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $fileCount and the number of matching lines are $matching"

