

if [ "$#" -lt 2 ]; then
    echo "Error: Parameters were not specified."
    exit 1
fi

writefile="$1"
writestr="$2"

dirpath=$(dirname "$writefile")
if [ ! -d "$dirpath" ]; then
    mkdir -p "$dirpath"
    if [ $? -ne 0 ]; then
        echo "Error: Fail to create the directory path."
        exit 1
    fi
fi

echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
    echo "Error: File could not be created."
    exit 1
fi


echo "Success: File created with content."


