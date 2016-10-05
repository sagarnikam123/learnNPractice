# The Silly Snail

#######################################################################################################################
#
#   Silly Snail was a very intelligent snail on Snail Island. In order to get eligible for marriage, he had to pass
#   the Graduation Exam conducted by C.B.S.E ( Central Board of Snail Education ). Seeing the intelligence level of
#   the Silly Snail, the head of C.B.S.E decided to conduct the exam himself. Silly Snail performed very well in all
#   the levels of the exam but got stuck on the last one.
#   At the final level of the exam, the Head of C.B.S.E sent him to one of the the Silly trees and Silly Snail's
#   task was to report all the fruits on the tree in a specific way. Silly tree was a very special tree which had
#   fruits of various colors. Even the smallest Silly trees have a fruit with color 1. As the tree grows larger,
#   two more fruits with unique colors get attached to some existing fruit of the tree as Fruit left and Fruit right.
#   Silly Snail has to travel the Silly Tree in a very specific way and report the answer at the end.
#   A fruit with color 1 is assumed to be present on every Silly Tree. Silly Sail starts with color 1 and notes
#   it down. On reaching any fruit, he notes down its color and then moves to the left part of the tree.
#   on completing the entire left sub-tree, he moves to the right subtree and does the same.
#   Refer the sample test cases for more clarity.
#   While he was going to submit the answer sheet, the sheet was blown away by wind. You need to help the Silly
#   Snail generate all the answers without traveling the entire tree again.
#
#   INPUT :
#   the first line of the input contains the number of test cases. The first line of each test case consists of
#   a single integer n ( the number of relations describing the tree ). n lines follow describing the n relations.
#   Each relation has 3 space separated integers X, Y and Z. X is some existing fruit on the tree. Y and Z are the
#   colors of the left fruit and right fruit of X respectively. If Y or Z = 0,
#   it implies that X has no left fruit or right fruit respectively.
#
#   OUTPUT :
#   You need to display all the fruit colors on the Silly Tree in the described manner.
#
#   CONSTRAINTS :
#   1 <= t <= 50
#   0 <= n <= 100000
#   2 <= Y,Z <= 100000
#   1 <= X <= 100000
#
#   SAMPLE INPUT
#   2
#   7
#   1 7 3
#   7 9 14
#   3 10 5
#   9 6 12
#   14 8 4
#   10 2 0
#   5 11 0
#   4
#   1 11 13
#   11 14 7
#   14 5 9
#   7 6 4
#
#   SAMPLE OUTPUT
#   1 7 9 6 12 14 8 4 3 10 2 5 11
#   1 11 14 5 9 7 6 4 13
#
#   Explanation
#   For test case 2:
#   Silly Snail goes on to color 1, notes it down. Then he goes on to the left fruit of 1 that is 11,
#   notes it down. then he visits the left fruit of 11, 14 and notes it down and then to 5. when no left subtree
#   is left in this part, he goes to the right towards color 9 and then to 7,6,4, and finally to 13
#
#######################################################################################################################
