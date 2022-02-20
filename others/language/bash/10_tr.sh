# tr - Transform, Replace and Remove specific characters from strings
# tr - translate characters

echo "This is a string" | tr 'i' '1' # replace single character
echo "This is a string" | tr ' ' '1' # replace single character

echo "This is a string" | tr 'ia' '14' # replace multiple characters
echo "This is a string" | tr 'abcdefghijklmnopqrstuvwxyz' 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' # replace multiple characters
echo "This is a string" | tr '[:lower:]' '[:upper:]'
echo "This is a string" | tr ' ' '\t' # replace whitespace

echo "This is a string" | tr -d ' ' # delete single character
echo "This is a string" | tr -d '[:upper:]' # deletes upper characters
echo "This is A string" | tr -d '[:lower:]' # deletes lower characters

echo "This is a string" | tr ' ' '\t' # replace whitespace
echo "This     is     a  string" | tr -s ' ' ' ' # squeeze multiple spaces into single
echo "This     is     a  string" | tr -s '[:space:]' ' ' # squeeze multiple spaces into single
echo "this\nis\na\nstring" | tr -s '\n' ' ' # works only in zsh

echo "this is a string" | tr -d '[:space:]'
echo "this is a string" | tr -dc '[:space:]' # removes everything except spaces

# generates random password
openssl rand -base64 20
openssl rand -base64 20 | tr -dc '[:alnum:]' # delete all except alpha numeric
