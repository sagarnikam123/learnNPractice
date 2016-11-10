# Finding the percentage

#######################################################################################################################
#
#   You have a record of N students. Each record contains the student's name, and their percent marks in Maths,
#   Physics and Chemistry. The marks can be floating values. The user enters some integer N followed by the names
#   and marks for N students. You are required to save the record in a dictionary data type. The user then enters
#   a student's name. Output the average percentage marks obtained by that student, correct to two decimal places.
#
#   Input Format
#   The first line contains the integer N, the number of students. The next N lines contains the name and marks
#   obtained by that student separated by a space. The final line contains the name of a
#   particular student previously listed.
#
#   Constraints
#   2 <= N <= 10
#   0 <= Marks <= 100
#
#   Output Format
#   Print one line: The average of the marks obtained by the particular student correct to 2 decimal places.
#
#   Sample Input
#   3
#   Krishna 67 68 69
#   Arjun 70 98 63
#   Malika 52 56 60
#   Malika
#
#   Sample Output
#   56.00
#
#   Explanation
#   Marks for Malika are {51, 56, 60} whose average is (51 + 56 + 60)/3 = 56
#
#######################################################################################################################
#
#   #otherTestCases
#   input 1
#   2
#   Harsh 25 26.5 28
#   Anurag 26 28 30
#   Harsh
#
#   ouput 1
#   26.50
#
#   input 2
#   2
#   Anurag 50 60 70
#   Prerna 100 99.5 99
#   Prerna
#
#   output 2
#   99.50
#
#   input 3
#   3
#   Gaurav 72 79 86
#   Bhejaria 59 60 61
#   Salman 59 59 60
#   Salman
#
#   output 3
#   59.33
#
#######################################################################################################################

noOfStudents = int(input().strip())
hashMap = {}

for zz in range(noOfStudents):
    bappa = input().strip().split(' ')
    personNav = bappa[0]
    marks = [ float(bappa[1]), float(bappa[2]), float(bappa[3]) ]
    hashMap[personNav] = marks

lastPersonName = input().strip()

total = 0
for mark in hashMap[lastPersonName]:
    total += mark

print("%.2f" %(total/3.00) )
