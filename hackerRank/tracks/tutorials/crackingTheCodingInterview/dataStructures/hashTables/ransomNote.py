# Ransom Note

#######################################################################################################################
#
#   A kidnapper wrote a ransom note but is worried it will be traced back to him. He found a magazine and wants
#   to know if he can cut out whole words from it and use them to create an untraceable replica of his ransom note.
#   The words in his note are case-sensitive and he must use whole words available in the magazine, meaning he
#   cannot use substrings or concatenation to create the words he needs.
#   Given the words in the magazine and the words in the ransom note, print Yes if he can replicate his ransom note
#   exactly using whole words from the magazine; otherwise, print No.
#
#   Input Format
#   The first line contains two space-separated integers describing the respective values of m (the number of words
#   in the magazine) and n (the number of words in the ransom note).
#   The second line contains m space-separated strings denoting the words present in the magazine.
#   The third line contains n space-separated strings denoting the words present in the ransom note.
#
#   Constraints
#   1 <= m, n <= 30000
#   1 <= length of any word <= 5
#       Each word consists of English alphabetic letters (i.e. a to z and A to Z).
#       The words in the note and magazine are case-sensitive.
#
#   Output Format
#   Print Yes if he can use the magazine to create an untraceable replica of his ransom note; otherwise, print No.
#
#   Sample Input
#   6 4
#   give me one grand today night
#   give one grand today
#
#   Sample Output
#   Yes
#
#   Explanation
#   All four words needed to write an untraceable replica of the ransom note are present in the magazine,
#   so we print Yes as our answer.
#
#######################################################################################################################
#
#   input2
#   12 2
#   h ghq g xxy wdnr anjst xxy wdnr h h anjst wdnr
#   h ghq
#
#   output2
#   Yes
#
#   input3
#   100 50
#   dlji eeyfb ox ayw fmphg x ffbkr z qiq vwvt zqgq nmw hlv c looms ffzif wfzx gzmf ez acidl mxwcw cm ichsi p pltu y jn re enujc ztm k s pkv hv om bsvw czy yzm lpli rj rm waqyk hkxf uffv rctam gp c enbez ngrc uos wfzx z hv acidl mxwcw hlv dlji enujc mxwcw cm p om pkv om x ox enbez pkv enujc rm ngrc x uos dlji zqgq c z rm eeyfb bsvw c dlji gzmf looms re p mxwcw gzmf hlv hv enbez y pkv rm y p gzmf ngrc gzmf wfzx
#   ichsi c c uffv cm jn uffv s rm om uos czy czy nmw hv om gzmf ox uos pltu qiq czy rj vwvt s c ox bsvw acidl ffbkr ez looms ngrc yzm rj dlji wfzx waqyk om looms z om waqyk zqgq wfzx om dlji z nmw mxwcw
#
#   output3
#   No
#
#######################################################################################################################
def ransom_note(magazine, ransom):
    ifYes = True
    magHash = {}

    for w in magazine:
        if w in magHash:
            magHash[w] += 1
        else:
            magHash[w] = 1

    for w2 in ransom:
        if w2 in magHash and magHash[w2] > 0:
            magHash[w2] = magHash[w2] - 1
        else:
            ifYes = False
            break
    return ifYes

m, n = map(int, input().strip().split(' '))
magazine = input().strip().split(' ')
ransom = input().strip().split(' ')
answer = ransom_note(magazine, ransom)
if(answer):
    print('Yes')
else:
    print('No')
