# Chemical Reaction

#######################################################################################################################
#
#   Ani and his Favourite Chemistry Teacher Lissa were performing an Experiment in the Chemistry Lab. Experiment
#   involves a N step Chemical Reaction. An N step Chemical Reaction requires N different reactants from the
#   periodic table . (Do you know about Periodic Table? No , still you can try solving this problem). N elements
#   are stacked in the bottom up manner with their reacting times. Look at the given figure.
#   image
#
#   Lissa is very good at performing experiment (offcourse as she is a chemistry teacher). So, she is doing the
#   actual job alone. Ani is there only to provide her a helping hand. After every step, Lissa ordered Ani to put
#   kth element from the stack (counting start from bottom) into the ongoing chemical reaction and record the
#   expected time taken by the chemical reaction to be accomplished.
#   Expected Time of a Chemical reaction is defined as the maximum of reacting time of all the reactants present
#   in the chemical reaction at that instant of time.
#   Considering a 6 step Chemical reaction with the same set of reactants given above. Let the order of elements
#   given by Lissa to Ani follows this list.
#   Note that the list contains N-1 elements only.
#
#   2 2 1 2 2
#
#   Step 1: Ani puts the second element from the bottom i.e titanium into the chemical reaction and records
#   the expected time as 799 .
#   New stack configuration :: image
#   Step 2: Ani puts the second element from the bottom i.e barium into the chemical reaction and records
#   the expected time as 799.
#   New stack configuration ::image
#   Step 3: Ani puts the first element from the bottom i.e zinc into the chemical reaction and records
#   the expected time as 999.
#   New stack configuration ::image
#   Step 4: Ani puts the second element from the bottom i.e potassium into the chemical reaction and records
#   the expected time as 999.
#   New stack configuration ::image
#   Step 5: Ani puts the second element from the bottom i.e sodium into the chemical reaction and records
#   the expected time as 999.
#   New stack configuration ::image
#   As there is only one element left on the stack in the end. Ani puts that element into the reaction without
#   asking his teacher (He is over-smart actually ). While doing this, he dropped some chemical on the record
#   taken by him. This made Miss Lissa very angry and she decided to punish him. Ani does not want to be punished
#   by his favourite teacher. So, can you save him from being punished ?. Can you generate same record for him.
#
#   Input:
#   First line of input contains a single integer T denoting the number of Experiments to be performed.
#   Next 4*T lines contains description of each experiment. Each experiment's description consists of 4 lines.
#   First line of description contains a single integer N denoting the order of reaction (number of reactants).
#   Next line of description contains N space separated strings i.e names of reactants. Next line of description
#   contains N integers denoting the reacting time of each element. Next line of description contains N-1 integers
#   denoting the ordered list of elements given by Lissa to Ani.
#
#   Output:
#   For each Experiment, Output consists of N lines where ith line contains one string (name of Element added in
#   the ith step) and expected time of the Chemical Reaction after ith step.
#
#   Constraints:
#   1 <= T <=10
#   1 <= N <= 5*105
#   *Element names composed of only lower case letters *
#   1 <=|Reactant's name| <= 10
#   0 <= Reacting time <= 109
#   sum of all N over all the test cases is 5*109
#
#   NOTE:
#   Prefer to use Printf / Scanf instead of cin / cout (very large input set).
#
#   SAMPLE INPUT
#   1
#   6
#   zinc titanium barium lithium potassium sodium
#   999 799 600 140 7 100
#   2 2 1 2 2
#
#   SAMPLE OUTPUT
#   titanium 799
#   barium 799
#   zinc 999
#   potassium 999
#   sodium 999
#   lithium 999
#
#######################################################################################################################
