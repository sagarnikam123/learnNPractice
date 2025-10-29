# Conditional Statements

################################################################################
#if
if True :
    print("It's True!")

if False :
    print("It's True!")

if bool('eggs') :
    print('Yes please!')

if 'eggs' :
    print('Yes please!')

#else
h =42
if h > 50:
    print('Greater than 50')
else :
    print('50 or smaller')

# nested if-else
if h > 50:
    print('Greater than 50')
else:
    if h < 20 :
        print('Less than 20')
    else :
        print('Between 20 & 50')

# elif
if h > 50:
    print('Greater than 50')
elif h < 20 :
    print('Less than 20')
else :
    print('Between 20 & 50')

################################################################################
