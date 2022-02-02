# Taking the mystery out of the 'tar' command - Create, extract and compress archives easily

################################################################################
tar -cf files.tar data/file1 data/file2  # c-create, f-filename
ls -lah # view tar file
rm data/file1 data/file2 # remove files

# list files in tar
tar -tf files.tar # list files
tar -tf files.tar | grep file1

# extract
tar -xf files.tar # extract files
cat data/file1 data/file2 # view extracted file content
cat files.tar

# compressed
cat data/lorem_ipsum
ls -lah data/lorem_ipsum # note file size

tar -czvf long_file.tar.gz data/lorem_ipsum # z-gz, v-verbose, c-create, f-filename
ls -lh long_file.tar.gz # compare file size with above

tar -czvf long_file.tgz data/lorem_ipsum # z-gz, v-verbose, c-create, f-filename
ls -lh long_file.tgz # compare file size with above

# list files in tar
tar -tf long_file.tar.gz
rm data/lorem_ipsum

# extract
tar -xvzf long_file.tar.gz # x-extract, v-verbose, z-gz, f-filename
################################################################################
