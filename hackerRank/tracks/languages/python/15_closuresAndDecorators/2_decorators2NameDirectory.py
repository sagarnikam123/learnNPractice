# Decorators 2 - Name Directory

#######################################################################################################################
#
#   Let's use decorators to build a name directory! You are given some information about N people. Each person has
#   a first name, last name, age and sex. Print their names in a specific format sorted by their age in ascending
#   order i.e. the youngest person's name should be printed first. For two people of the same age,
#   print them in the order of their input.
#
#   For Henry Davids, the output should be:
#   Mr. Henry Davids
#
#   For Mary George, the output should be:
#   Ms. Mary George
#
#   Input Format
#   The first line contains the integer N, the number of people.
#   N lines follow each containing the space separated values of the first name, last name, age and sex, respectively.
#
#   Constraints
#   1 <= N <= 10
#
#   Output Format
#   Output N names on separate lines in the format described above in ascending order of age.
#
#   Sample Input
#   3
#   Mike Thomson 20 M
#   Robert Bustle 32 M
#   Andria Bustle 30 F
#
#   Sample Output
#   Mr. Mike Thomson
#   Ms. Andria Bustle
#   Mr. Robert Bustle
#
#   Concept
#   For sorting a nested list based on some parameter, you can use the itemgetter library.
#   You can read more about it here.
#   (http://stackoverflow.com/questions/409370/sorting-and-grouping-nested-lists-in-python?answertab=votes)
#
#######################################################################################################################
