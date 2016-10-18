# 03_05-Lambdas

scientists = [ 'Marie Curie', 'Albert Einstein', 'Neils Bohr', 'Isaac Newton', 'Dmitri Mendeleev', 'Antoine Lavoisier', 'Carl Linnaeus', 'Alfred Wegener', 'Charles Darwin' ]
sorted(scientists, key=lambda name: name.split()[-1])   # sorted by lastname
sorted(scientists, key=lambda name: name.split()[0])    # sorted by firstname


last_name = lambda name: name.split()[-1]
last_name
last_name('Nikola Tesla')

def first_name(name):
 return name.split()[0]

first_name('Gallileo Galili')
