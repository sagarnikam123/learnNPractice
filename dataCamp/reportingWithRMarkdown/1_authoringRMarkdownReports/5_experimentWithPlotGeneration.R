# Experiment with plot generation

#######################################################################################################################
#
# The sample code on the right uses ggvis functions to visualize the data. It displays a plot of pressure vs. ozone.
#
# We'll use ggvis to create several graphs for our R Markdown reports.
#
# You can learn more about ggvis in DataCamp's ggvis course.
#
######################################################################################################################

# The nasaweather, dplyr and ggvis packages are loaded in the workspace.

# Code for the previous exercise - do not change this
means <- atmos %>%
  filter(year == 1995) %>%
  group_by(long, lat) %>%
  summarize(temp = mean(temp, na.rm = TRUE),
         pressure = mean(pressure, na.rm = TRUE),
         ozone = mean(ozone, na.rm = TRUE),
         cloudlow = mean(cloudlow, na.rm = TRUE),
         cloudmid = mean(cloudmid, na.rm = TRUE),
         cloudhigh = mean(cloudhigh, na.rm = TRUE)) %>%
  ungroup()

# Change the code to plot the temp variable vs the ozone variable
means %>%
  ggvis(x = ~pressure, y = ~ozone) %>%
  layer_points()

means %>%
  ggvis(x = ~temp, y = ~ozone) %>%
  layer_points()
