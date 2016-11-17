# Sherlock and Dates

#######################################################################################################################
#
#   Watson was observing in calendar dates of form DD:MM:YYYY. He considers a date to be lucky if
#       DD + 1 = MM and
#       MM + 1 = YYYY % 100, where a % b denotes the remainder when a is divided by b.
#
#   For example, date 02:03:2004 is lucky because 02 + 1 = 03 and 03 + 1 = 2004 % 100.
#   Now comes Sherlock and Watson gives him two dates, say D1 and D2, and asks him how many lucky dates lie between D1
#   and D2(both inclusive).
#
#   Input
#   First line contains T, the number of test cases. Each test case consists of two valid dates D1
#   and D2(in form DD:MM:YYYY) separated by a space. D2 occurs on or after D1.
#
#   Output
#   For each test case, print the required answer in one line.
#
#   Constraints
#   1 ≤ T ≤ 10^4
#   1 ≤ Year of each date ≤ 9999
#   20% testdata: Years D1 and D2 don't differ by more than 10
#   20% testdata: Years D1 and D2 don't differ by more than 100
#   60% testdata: General constraints.
#
#   SAMPLE INPUT
#   2
#   01:01:0001 01:02:0003
#   05:02:2015 05:02:2017
#
#   SAMPLE OUTPUT
#   1
#   0
#
#   Explanation
#   testcase1: Date 01:02:0003 is the lucky date in range.
#   testcase2: No lucky date in range.
#
#######################################################################################################################
