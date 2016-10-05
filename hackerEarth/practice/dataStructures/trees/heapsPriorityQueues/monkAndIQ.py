# Monk And IQ

#######################################################################################################################
#
#   Monk and his P-1 friends recently joined a college. He finds that N students have already applied for different
#   courses before him. Courses are assigned numbers from 1 to C. He and his friends will follow the following
#   conditions when choosing courses:-
#   They will choose the course i (1 <= i <= C), for which the value of z is minimum. Here, z = x*c where c is the
#   number of students already enrolled in the course i and x is the sum of IQ of the last two students who enrolled
#   in that course. If a single student has applied for a course, then the value of x will be that student's IQ.
#   If no student has enrolled for that course, then value of x will be 0. If the value of z is same for two courses,
#   then they will choose the course with the minimum course number. You need to find which courses Monk and his
#   friends should take after following the above conditions.
#   Note: Each of them will choose their courses, one at a time.
#   Monk will choose his course first followed by his friends.
#
#   Input:
#   The first line contains the numbers C, P and N where C denotes the number of courses in that college,
#   P denotes Monk and his friends and N denotes the number of students who have already applied for the courses.
#   The next line consists of N space separated integers Y[i] which denotes the IQ of the ith student.
#   Here, the ith student chooses the ith course.
#   The next line consists of P space separated integers X[i] which denotes the IQ of Monk and his friends.
#
#   Output:
#   Print P space separated integers in a line which denotes the course number
#   which Monk and his friends have applied for.
#
#   Constraints:
#   1 <= C <= 100000
#   1 <= P <= 100000
#   1 <= N <= C
#   1 <= Y[i],X[i] <= 100000
#
#   SAMPLE INPUT
#   5 4 4
#   2 8 5 1
#   9 10 5 1
#
#   SAMPLE OUTPUT
#   5 4 1 3
#
#   Explanation
#   In the sample test case, the last course has not been applied by anyone. So, its sum will be 0 initially.
#   Hence, Monk will apply there as the value of z = 0.
#   Now Monk's first friend will apply for the 4th course as its value of z = 1,
#   which is minimum of all the four courses.
#   Monk's second friend will apply for the 1st course as its value of z = 2,
#   which is minimum of all the four courses.
#   Similarly, Monk's third friend will apply for the 3rd course as its value of z = 5,
#   which is minimum of all the four courses.
#
#######################################################################################################################
