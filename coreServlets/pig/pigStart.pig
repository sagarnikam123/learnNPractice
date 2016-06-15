
# Pig - coreServlets


# starging 
 bin/pig -x local

# view local file
cat README.txt
cat a.txt

#  load & view data
 records = load 'a.txt' as (letters:chararray,count:int);
 dump records;
# limiting view of data
limitRecords =limit records 3;
dump limitRecords;

# 
 # display bag structure
 describe limitRecords;
 # explain execution plan
 explain records;
 # Illustrate how pig engine transforms data 
 illustrate records;

# Grouping
chars = load 'b.txt' as (c:chararray);
describe chars;
dump chars;
charGroup = group chars by c;
dump charGroup;
illustrate charGroup;

# Foreach
countOnly = foreach records generate count;
dump countOnly;

# Functions
counts = FOREACH charGroup GENERATE group, COUNT(chars);
dump counts;

# Tokenize
linesOfText = load 'data/data.txt ' as (line:chararray);
dump linesOfText;
tokenBag = FOREACH linesOfText GENERATE TOKENIZE(line);
dump tokenBag;

# FLATTEN
flatBag = FOREACH tokenBag GENERATE FLATTEN($0);
dump flatBag;

# Most occured start letter
	lines = LOAD 'README.txt' AS (line:chararray);
	describe lines;
	toDisplay = LIMIT lines 5;
	dump toDisplay;
	tokenized = FOREACH lines GENERATE ;
	dump tokenized;
	singleTokens = FOREACH lines GENERATE FLATTEN(TOKENIZE(line)) AS token:chararray;
	letters = FOREACH singleTokens GENERATE SUBSTRING(token,0,1) AS letter:chararray;
	describe letters;
	dump letters;
	letterGroup = GROUP letters by letter;
	describe letterGroup;
	countPerLetter = FOREACH letterGroup GENERATE group, COUNT(letters);
	describe countPerLetter;
	dump countPerLetter;
	orderCountPerLetter = ORDER countPerLetter BY $1 DESC;
	result = LIMIT orderCountPerLetter 1;
	dumpt result;
	STORE result INTO 'data/mostSeenLetterOutput.txt'
