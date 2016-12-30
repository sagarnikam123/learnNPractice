# 08_05-map() Versus Comprehensions

[str(i) for i in range(5)]
list(map(str, range(5)))

i = (str(i) for i in range(5))
list(i)
i = map(str, range(5))
list(i)
