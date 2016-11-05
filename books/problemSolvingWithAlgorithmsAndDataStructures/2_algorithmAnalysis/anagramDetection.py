# 2.2.2 An Anagram Detection Example

# Solution 1: Checking Off
def anagram_solution1(s1, s2):
    a_list = list(s2)
    pos1 = 0
    still_ok = True
    while pos1 < len(s1) and still_ok:
        pos2 = 0
        found = False
        while pos2 < len(a_list) and not found:
            if s1[pos1] == a_list[pos2]:
                found = True
            else:
                pos2 = pos2 + 1
        if found:
            a_list[pos2] = None
        else:
            still_ok = False
        pos1 = pos1 + 1
    return still_ok

print(anagram_solution1('abcd', 'dcba'))
print(anagram_solution1('abc1', 'dcba'))

# Solution 2: Sort and Compare
def anagram_solution2(s1, s2):
    a_list1 = list(s1)
    a_list2 = list(s2)
    a_list1.sort()
    a_list2.sort()
    pos = 0
    matches = True
    while pos < len(a_list1) and matches:
        if a_list1[pos] == a_list2[pos]:
            pos = pos + 1
        else:
            matches = False
    return matches

print(anagram_solution2('abcde', 'edcba'))
print(anagram_solution2('abcdweve', 'edcbawe'))

# 2.2.3 Solution 3: Brute Force
# 2.2.4 Solution 4: Count and Compare
def anagram_solution4(s1, s2):
    c1 = [0] * 26
    c2 = [0] * 26
    for i in range(len(s1)):
        pos = ord(s1[i]) - ord('a')
        c1[pos] = c1[pos] + 1
        # print(pos, c1)
    for i in range(len(s2)):
        pos = ord(s2[i]) - ord('a')
        c2[pos] = c2[pos] + 1
    j = 0
    still_ok = True
    while j < 26 and still_ok:
        if c1[j] == c2[j]:
            j = j + 1
        else:
            still_ok = False
    return still_ok

print(anagram_solution4('apple', 'pleap'))
print(anagram_solution4('apple', 'pleweap'))
