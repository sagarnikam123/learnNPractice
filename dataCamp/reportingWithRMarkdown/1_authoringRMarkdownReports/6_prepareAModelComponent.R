# Prepare a model component

#######################################################################################################################
#
#	We've now loaded data, cleaned it, and visualized it. Our analysis will have one more component: a model.
#
# The code on the right creates a linear model that predicts ozone based on pressure and cloudlow;
# all three are variables of the means data frame you created earlier.
#
# You can learn more about building models with R in DataCamp's Introduction to Statistics course.
#
######################################################################################################################

# The nasaweather and dplyr packages are already at your disposal
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

# Change the model: base prediction only on temp
#mod <- lm(ozone ~ pressure + cloudlow, data = means)
mod <- lm(ozone ~ temp, data = means)

# Generate a model summary and interpret the results
summary(mod)
