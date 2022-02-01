# Pipe into commands and read from STDIN

################################################################################
echo hello world
cat data/lorem_ipsum | head
cat data/lorem_ipsum | head -n 1 # no of lines
cat data/lorem_ipsum | head -c 50 # no of characters
cat data/lorem_ipsum | head -c 100 # no of characters
################################################################################
cat data/lorem_ipsum | wc # word count (line, words, characters)
cat data/lorem_ipsum | wc -c # characters
cat data/lorem_ipsum | head -n 2 | wc -l # line
cat data/lorem_ipsum | head -n 2 | wc -w # words
cat data/lorem_ipsum | lolcat # produce rainbow of colors in terminal
################################################################################
chmod +X data/print_some_lines.sh
data/print_some_lines.sh
data/print_some_lines.sh | lolcat

chmod +x data/read_from_stdin.sh
data/read_from_stdin.sh
cat data/lorem_ipsum | data/read_from_stdin.sh
cat data/lorem_ipsum | head -2 | data/read_from_stdin.sh
echo "foobar" | data/read_from_stdin.sh
echo "foobar" | data/read_from_stdin.sh | lolcat
################################################################################
