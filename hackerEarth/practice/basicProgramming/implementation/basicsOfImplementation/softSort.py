# Soft Sort

#######################################################################################################################
#
#   Let us define an easy Sorting Algorithm called SoftSort. SoftSort Sorting algorithm involves use of IF and ELSE
#   decision statements only. For example :
#   To sort two numbers a and b. SoftSort Algorithm's Code is given below.
#
#   void print(int a,int b){
#       printf( "%d %d\n",a,b);
#   }
#   void sort( int a, int b){
#       if( b < a )
#           print( b, a );
#        else
#           print( a, b );
#   }
#
#   To sort three numbers a , b and c . Source Code is given below.
#
#     void print( int a, int b, int c ) {
#           printf( "%d %d %d\n", a, b, c );
#   }
#   void sort( int a, int b, int c ) {
#           if( a < b )
#               if( a < c )
#                   if( b < c )
#                       print( a, b, c );
#                   else
#                       print( a, c, b );
#               else
#                   print( c, a, b );
#           else
#               if( b < c )
#                   if( a < c )
#                       print( b, a, c );
#                   else
#                       print( b, c, a );
#               else
#                   print( c, b, a );
#       }
#
#   ANI is fascinated with the SoftSort Algorithm and decided to ask an interesting question to KUKU.
#   What could be the length of source code to sort n numbers using SoftSort Algorithm ?
#
#   INPUT:
#   First line of the input contains an integer t denoting the number of ANI's queries.Next t lines contains an
#   integer n denoting the numbers given by ANI to Sort using the above mentioned algorithm.
#
#   OUTPUT:
#   Output consists of t lines each describing the length of Source Code written to sort n numbers given by ANI in
#   each corresponding Test Case.
#   Since the answer can be very large so print output modulo 10^9+7.
#
#   CONSTRAINTS:
#   1 <= t <= 10^5
#   1 <= n <= 10^6
#
#   SAMPLE INPUT
#   3
#   1
#   2
#   3
#
#   SAMPLE OUTPUT
#   6
#   9
#   21
#
#   Explanation
#   EXPLANATION:
#   Refer Given Problem Statement
#
#######################################################################################################################
