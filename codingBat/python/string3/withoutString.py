#######################################################################################################################
#
#    withoutString
#
#    Given two strings, base and remove, return a version of the base string where all instances of
#    the remove string have been removed (not case sensitive). You may assume that the remove string
#    is length 1 or more. Remove only non-overlapping instances, so with "xxx" removing "xx" leaves "x".
#
#######################################################################################################################
#   
#   withoutString("Hello there", "llo") → "He there"
#   withoutString("Hello there", "e") → "Hllo thr"
#   withoutString("Hello there", "x") → "Hello there"
#   withoutString("This is a FISH", "IS") → "Th a FH"-
#   withoutString("THIS is a FISH", "is") → "TH a FH"-
#   withoutString("THIS is a FISH", "iS") → "TH a FH"-
#   withoutString("abxxxxab", "xx") → "abab"
#   withoutString("abxxxab", "xx") → "abxab"
#   withoutString("abxxxab", "x") → "abab"
#   withoutString("xxx", "x") → ""
#   withoutString("xxx", "xx") → "x"
#   withoutString("xyzzy", "Y") → "xzz"-
#   withoutString("", "x") → ""
#   withoutString("abcabc", "b") → "acac"
#   withoutString("AA22bb", "2") → "AAbb"
#   withoutString("1111", "1") → ""
#   withoutString("1111", "11") → ""
#   withoutString("MkjtMkx", "Mk") → "jtx"
#   withoutString("Hi HoHo", "Ho") → "Hi "
#   
#######################################################################################################################
