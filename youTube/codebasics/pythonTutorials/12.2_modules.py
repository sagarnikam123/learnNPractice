# 12_Modules

import math
math.sqrt(16)
math.pow(2,5)
dir(math)

math.pi
math.log10(1)
math.log10(10)
math.log10(100)
math.log10(1000)
math.log10(10000)
math.floor(2.3)
math.ceil(2.3)
################################################################################

import calendar
cal = calendar.month(2016,1)
print(cal)
calendar.isleap(2016)
calendar.isleap(2015)
dir(calendar)
################################################################################

import modules.functions
area = modules.functions.calculate_square_area(5)
print(area)

import modules.functions as f
area = f.calculate_square_area(5)
print(area)
################################################################################
import sys
import functions as f
sys.path.append('/home/quanta/git/learnNPractice/youTube/codeBasics/pythonTutorials/modules')

area = f.calculate_square_area(10)
area_triangle = f.calculate_triangle_area(5,10)
print('square area - ', area)
print('triangle area - ', area_triangle)
################################################################################
