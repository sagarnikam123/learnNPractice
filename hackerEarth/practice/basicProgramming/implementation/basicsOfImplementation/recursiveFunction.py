# Recursive Function

#######################################################################################################################
#   
#   Implement the recursive function given by the following rules and print the last 3 digits:
#   
#   F(x, y) = {
#   y + 1 when x = 0,
#   F(x - 1, 1) when x > 0 and y = 0,
#   F(x - 1, F(x, y - 1)) when x > 0 and y > 0
#   }
#   
#   Input Format
#   A single line containing two integers X,Y
#   1 <= X,Y <= 100000
#   
#   Output Format
#   The last three digits
#   
#   Input Constraints
#   X and Y are non-negative integers. Problem Setter: Practo Tech Team
#   
#   SAMPLE INPUT
#   1 100
#   
#   SAMPLE OUTPUT
#   102
#   
#   Explanation
#   Note: x and y are non-negative integers
#   
#######################################################################################################################
