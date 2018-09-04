# Prepare your data

#######################################################################################################################
#
# We will use some of the data in atmos to explore the relationship between ozone and temperature. But before we do,
# let's transform the data into a more useful form.
# The sample code uses dplyr functions to aggregate the data. It computes the mean value of temp, pressure, ozone,
# cloudlow, cloudmid, and cloudhigh for each latitude/longitude grid point.
#
# You can learn more about dplyr in DataCamp's dplyr course.
#
# Don't get confused by the pipe operator (%>%) from the magrittr package that is used often
# in combination with dplyr verbs. It is used to chain your code in case there are several operations you want
# to do without the need to save intermediate results.
#
######################################################################################################################

# The nasaweather and dplyr packages are available in the workspace

# Set the year variable to 1995
year <- 1995

means <- atmos %>%
  filter(year == year) %>%
  group_by(long, lat) %>%
  summarize(temp = mean(temp, na.rm = TRUE),
         pressure = mean(pressure, na.rm = TRUE),
         ozone = mean(ozone, na.rm = TRUE),
         cloudlow = mean(cloudlow, na.rm = TRUE),
         cloudmid = mean(cloudmid, na.rm = TRUE),
         cloudhigh = mean(cloudhigh, na.rm = TRUE)) %>%
  ungroup()

# Inspect the means variable
means
