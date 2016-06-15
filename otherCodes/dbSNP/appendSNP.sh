# Appending dbSNPfiles (genomic data)


for file in $(ls)
do
cat $file >> /home/trendwise/Documents/dbSNP/dataFile/bigSNP.csv;
done
