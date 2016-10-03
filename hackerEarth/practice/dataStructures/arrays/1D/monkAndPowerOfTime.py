# Monk and Power of Time

#######################################################################################################################
#
#   The Monk is trying to explain to its users that even a single unit of time can be extremely important and to
#   demonstrate this particular fact he gives them a challenging task.
#   There are N processes to be completed by you, the chosen one, since you're Monk's favorite student.
#   All the processes have a unique number assigned to them from 1 to N.
#   Now, you are given two things:
#       The calling order in which all the processes are called.
#       The ideal order in which all the processes should have been executed.
#
#   Now, let us demonstrate this by an example. Let's say that there are 3 processes, the calling order of the
#   processes is: 3 - 2 - 1. The ideal order is: 1 - 3 - 2, i.e., process number 3 will only be executed after process
#   number 1 has been completed; process number 2 will only be executed after process number 3 has been executed.
#       Iteration #1: Since the ideal order has process #1 to be executed firstly, the calling ordered is changed,
#           i.e., the first element has to be pushed to the last place. Changing the position of the element takes
#           1 unit of time. The new calling order is: 2 - 1 - 3. Time taken in step #1: 1.
#       Iteration #2: Since the ideal order has process #1 to be executed firstly, the calling ordered has to be
#           changed again, i.e., the first element has to be pushed to the last place.
#           The new calling order is: 1 - 3 - 2. Time taken in step #2: 1.
#       Iteration #3: Since the first element of the calling order is same as the ideal order,
#           that process will be executed. And it will be thus popped out. Time taken in step #3: 1.
#       Iteration #4: Since the new first element of the calling order is same as the ideal order,
#           that process will be executed. Time taken in step #4: 1.
#       Iteration #5: Since the last element of the calling order is same as the ideal order,
#           that process will be executed. Time taken in step #5: 1.
#
#   Total time taken: 5 units.
#   PS: Executing a process takes 1 unit of time. Changing the position takes 1 unit of time.
#
#   Input format:
#   The first line a number N, denoting the number of processes. The second line contains the calling order of
#   the processes. The third line contains the ideal order of the processes.
#
#   Output format:
#   Print the total time taken for the entire queue of processes to be executed.
#
#   Constraints:
#   1 <= N <= 100
#
#   SAMPLE INPUT
#   3
#   3 2 1
#   1 3 2
#
#   SAMPLE OUTPUT
#   5
#
#######################################################################################################################
