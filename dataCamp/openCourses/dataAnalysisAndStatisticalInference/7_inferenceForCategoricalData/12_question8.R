# Question 8

#######################################################################################################################
#
#	If you decided the conditions for inference are reasonable, you can now construct the interval by hand. It is
#	possible to do this either by calculating the standard error and constructing the interval by hand, or by allowing
#	the inference() function to do it for us.
#
#	inference(us12$response, est = "proportion",
#	          type = "ci", method = "theoretical",
#	          success = "atheist")
#	Note that since the goal is to construct an interval estimate for a proportion, it's necessary to specify what
#	constitutes a "success", which here is a response of atheist. Although formal confidence intervals and hypothesis
#	tests don't show up in the report, suggestions of inference appear at the bottom of page 7: "In general, the error
#	margin for surveys of this kind is ±± 3-5% at 95% confidence."
#
#	Use the inference() function in the console (it's already loaded). Keep in mind that the inference() function
#	is a bit on the heavy side, it may take a while to run.
#
#	Based on the R output, what is the margin of error for the estimate of the proportion of atheists in US in 2012?
#
#######################################################################################################################

1	The margin of error for the estimate of the proportion of atheists in the US in 2012 is 0.05.
2	The margin of error for the estimate of the proportion of atheists in the US in 2012 is 0.025.
3	The margin of error for the estimate of the proportion of atheists in the US in 2012 is 0.0135.

inference(us12$response, est = "proportion", type = "ci", method = "theoretical", success = "atheist")

Answer - 3	The margin of error for the estimate of the proportion of atheists in the US in 2012 is 0.0135.
