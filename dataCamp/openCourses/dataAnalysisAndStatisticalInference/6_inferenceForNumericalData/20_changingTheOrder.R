# Changing the order

#######################################################################################################################
#
#	By default the inference() function sets the parameter of interest to be (μnonsmoker−μsmokerμnonsmoker−μsmoker).
#	We can easily change this order by using the order argument.
#
#	To set the order to μfirst−μsecondμfirst−μsecond use:
#
#	order <- c("first","second").
#
######################################################################################################################

# Add the order argument to the inference() function:
inference(y = nc$weight, x = nc$habit, est = "mean", type = "ht", null = 0, alternative = "twosided", method = "theoretical", order=c("smoker", "nonsmoker"))
