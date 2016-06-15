# calenders

import calendar
########################################################################
# create a plain text calendar
c = calendar.TextCalendar(calendar.SUNDAY)
#c = calendar.TextCalendar(calendar.MONDAY)
# last two zeros are for space in calender (distance bet two digits)
str = c.formatmonth(2013,1,0,0)
print str

# create a HTML formatter calendar
hc = calendar.HTMLCalendar(calendar.SUNDAY)
str = hc.formatmonth(2013,1)
print str

# loop over the days of a given month
# zeros mean that the day of the week is in an over lapping month
for i in c.itermonthdays(2013,8):
    print i

# The calendar module providers userful utitlies for the given locale,
# such as the names of days and months in both full & abbreviated forms.
for name in calendar.month_name:
    print name
print " "

for day in calendar.day_name:
    print day
print " "
# calculate days based on a rule : For example, consider
# a team meething on the first Friday of every month.
# To figure out what days that would be for each month,
# we can use this script:

for m in range(1,13): # 12 month

    # returns an array of weeks that represent the month
    cal = calendar.monthcalendar(2013,m)
    #the first Friday has to be within the first two weeks
    weekone = cal[0]
    weektwo = cal[1]

    if weekone[calendar.FRIDAY] != 0:
        meetday = weekone[calendar.FRIDAY]
    else :
        # if the first Friday isn't in the first week, it must be in the second
        meetday = weektwo[calendar.FRIDAY]
    print "%10s %2d" % (calendar.month_name[m], meetday)

########################################################################
