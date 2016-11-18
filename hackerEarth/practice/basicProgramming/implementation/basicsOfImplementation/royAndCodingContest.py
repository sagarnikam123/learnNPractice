# Roy and Coding Contest

#######################################################################################################################
#
#   Roy is going to organize Finals of Coding Contest in his college's computer labs. According to the rules of
#   contest, problem statements will be available on each computer as pdf file.
#   Now there are N number of computers and only one of them has the pdf file. Roy has collected M number of
#   pendrives from his friends. Copying pdf from computer to pendrive or from pendrive to computer takes exactly
#   1 minute. Roy has to copy pdf to all N
#   computers in minimum (optimal) time possible. You are to find this minimum time.
#   Please see Sample Test Explanation for clarity.
#
#   Input:
#   First line will contain integer T- number of test cases.
#   Next T lines each will contain two space separated integers, N- number of computers, M- number of pendrives.
#
#   Output:
#   Print the minimum time (in minutes) for each test case in a new line.
#
#   Constraints:
#   1 <= T <= 10000
#   1 <= N,M <= 1000000000(10^9)
#
#   SAMPLE INPUT
#   1
#   10 3
#
#   SAMPLE OUTPUT
#   5
#
#   Explanation
#   Just for the sake of understanding, let us number computers from 1
#   to 10 and pendrives from 1 to 3. Initially only 1st computer has the pdf.
#   1st minute: Roy copies the pdf from 1st computer to 1st pendrive, so 1 computer
#   and 1 pendrive has the pdf 2nd minute: He copies the pdf from 1st pendrive to 2nd computer and alongside
#   he copies pdf from 1st computer to 2nd pendrive. 3rd minute: Now he has two pendrives with pdf,
#   so he copies the pdf to 3rd and 4th computer using 1st and 2nd pendrive. Alongside he already copied pdf
#   to 1st and 2nd computer and has one pendrive blank. So he copies pdf into 3rd pendrive using any of the 1st
#   or 2nd computer. 4th minute: Now first 4 computers are done and we have pdf in all 3 pendrives.
#   So he simply copies pdf into 5th, 6th and 7th computer using three pendrive respectively. 5th minute:
#   He copies the pdf into 8th, 9th and 10th computers using three pendrives respectively.
#
#######################################################################################################################
