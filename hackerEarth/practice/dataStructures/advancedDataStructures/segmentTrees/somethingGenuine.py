# Something Genuine

#######################################################################################################################
#
#   Jeffrey is the creator of the Fenêtres operating system, the most popular operating system in the world. Sales
#   are dropping recently, and an initial inquiry into the issue turned up that some people were using pirated
#   versions of Fenêtres. Developers of his company promised to crack down on those users. They implemented a feature
#   — the pirated copy of the operating system would change to a black desktop background and display "This copy
#   of Fenêtres is not genuine." But it's not empty words Jeffrey was after. There was something else he desired all
#   along. He wants the raw data!. Responsibility through the company for this matter kept getting pushed down,
#   until the task came to you, a new hire of the company that owns Fenêtres. You knew that getting all the data for
#   Jeffrey in a reasonable amount of time was out the the question, was out of your reach. Even so, you want
#   something genuine that you can show him!. Therefore, you conducted a survey of N copies of Fenêtres,
#   recording their license numbers in an array. The user count of an array is the number of distinct integers
#   which are present in the array. The value of an array is the square of the user count. You have a trick that
#   will get you N * (N + 1) / 2 sets of data just from your initial array. Instead of getting just one piece of
#   information from your array, you will take all the subarrays of your first array (including the subarray that
#   corresponds to the whole array) and treat them as separate pieces of data! Specifically, the information Jeffrey
#   requires is the sum of the values of each array in your dataset. If you impress Jeffrey now, you'll quickly
#   ascend in the company. Calculating the result by hand is a bit too tedious,
#   so you are going to write a program that does it instead.
#
#   Input Format:
#   The first line of input will contain N.
#   The second line of input will contain the array A consisting of N integers, the license numbers.
#
#   Output Format:
#   The first and only line of output should contain the result as described in the problem statement.
#   Since this value may be large, you should output it modulo 10^9+7.
#
#   Constraints:
#   For all subtasks,
#   1 ≤ Ai ≤ N
#   [Subtask 1 - 4%]
#   1 ≤ N ≤ 100
#   [Subtask 2 - 7%]
#   1 ≤ N ≤ 2000
#   [Subtask 3 - 19%]
#   1 ≤ N ≤ 10000
#   [Subtask 4 - 27%]
#   1 ≤ N ≤ 2 × 10^5
#   There are at most 10 unique license numbers in A.
#   [Subtask 5 - 43%]
#   1 ≤ N ≤ 2 × 10^5
#
#   SAMPLE INPUT
#   4
#   2 1 3 2
#
#   SAMPLE OUTPUT
#   43
#
#   Explanation
#   There are 10 subarrays in total. Of these, all subarrays of length 1, 2, and 3 all have distinct license
#   numbers. The only subarray with length 4 has 3 distinct license numbers,
#   so the final answer is 4 × 1^2 + 3 × 2^2 + 2 × 3^2 + 1 × 3^2 = 43.
#
#######################################################################################################################
