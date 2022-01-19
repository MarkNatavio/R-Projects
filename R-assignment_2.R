# Assignment 1 - Mark Natavio
# -------------------------------------------------------------------------------------------------------------------
# Exercise 1
# Plot the histograms. How would you compare the various aspects of the two distributions?
# Both histograms are very similar.

# The male height histogram appears to be single peaked and it has a bell shape. The shape is symmetrical but
# slightly skewed-left. Additionally, there are no outliers. 
# The center of the distrubution is around ~[175,180] with a frequency of ~80. The distribution plots display
# frequency (y-axis), with range of [0,~80], and height in cm (x-axis), with a range of ~[150,200].

# The female height histogram appears to be single peaked and it has a bell shape. The shape is not very symmetrical.
# It appears to be skewed-right. There are no outliers.
# The center of the distrubution is around ~[165,170] with a frequency of ~70. The distribution plots display a
# frequency (y-axis) with range of [0,~70], and height in cm (x-axis) with a range of ~[140,190].

# In your description of the distributions, did you use words like “bell-shaped” or “normal”?
# Yes, I used "bell-shape" to describe the shape of the historgrams.

# When the command "fhgtmean = mean(fdims$hgt)" is inputted we get fhgtmean =  164.872307692308
# When the command "fhgtsd = sd(fdims$hgt)" is inputted we get fhgtsd = 6.54460213059717

# I carried out the following commands:
# > hist(fdims$hgt, probability = TRUE , ylim = c(0, 0.06))
# > x = 140:190
# > y = dnorm(x = x, mean = fhgtmean, sd = fhgtsd)
# > lines(x = x, y = y, col = "blue")
# The graph's frequency and size changes. The result can be seen by the pdf "Assignemnt_2 Exercise_1.pdf"

# -------------------------------------------------------------------------------------------------------------------
# Exercise 2
# Based on the this plot, does it appear that the data follow a nearly normal distribution?
# Yes, because although some bars towards the center of the graph do not match the curve, they still recide within it.

# After inputting the following commands:
# > qqnorm(fdims$hgt)
# > qqline(fdims$hgt)
# A new plot appears. This can be seen by the pdf "Assignemnt_2 Exercise_2.1.pdf"

# What do probability plots look like for data that I know came from a normal distribution? We can answer this by
# simulating data from a normal distribution using rnorm.

# > sim = rnorm(n = length(fdims$hgt), mean = fhgtmean, sd = fhgtsd)
# > hist(sim)
# After this commands, the value "sim" and a new histogram is made (Histogram of sim). This can be seen in 
# "Assignemnt_2 Exercise_2.2.pdf"

# > qqnorm(sim)
# > qqline(sim)
# After this commands, a new plot is made (Normal Q-Q Plot). This can be seen in "Assignemnt_2 Exercise_2.3.pdf"

# -------------------------------------------------------------------------------------------------------------------
# Exercise 3
# Make a normal probability plot of sim. Do all of the points fall on the line?
# No, although most points at the center of the plot fall on the line, there are many towards the edges that don't.

# How does this plot compare to the probability plot for the real data?
# The real data has a frequency with a range of [0,~80] and a sim with a range of [~145-185]. The plot seems to follow
# the same limits. All of the points do fall on the line. Looking into the real data, the edges of the graph seem to
# be far off from the rest. This leads me to beleive that it corelates with the edges of the plot.

# After inputting the command "qqnormsim(fdims$hgt)" we see multiple different plots of Sim. After clicking the zoom
# button we have a closer look of this graphs and they can be inspected by the pdf "Assignemnt_2 Exercise_3.pdf"

# -------------------------------------------------------------------------------------------------------------------
# Exercise 4
# Does the normal probability plot for fdims$hgt look similar to the plots created for the simulated data? That is,
# do plots provide evidence that the female heights are nearly normal?
# Yes, the normal probability plot and the plots from the simulated data have same measurements of sample quantities
# and theoretical quantities. Additionally, they all have many spots laying on the line around the center of the
# graph. However, as we go further into the edges, plots begin to deviate from the line.

# -------------------------------------------------------------------------------------------------------------------
# Exercise 5
# Using the same technique, determine whether or not female weights appear to come from a normal distribution. If
# not, how would you describe the shape of this distribution? Note: You may use a histogram to help you decide.
# First I created a histogram of the distribution of females wieight by inputting the command:
# > hist(fdims$wgt)
# The result can be seen by the pdf "Assignemnt_2 Exercise_5.1"

# Then, I made a normal plot for females weight and line of best fit using the commands:
# > qqnorm(fdims$wgt)
# > qqline(fdims$wgt)
# The result can be seen by the pdf "Assignemnt_2 Exercise_5.2"

# The histogram of the female weights does not seem normal. It appears to be single peaked, however it is not
# entirely bell shaped. The shape is skewed-right and there are two outliers rangine from ~[100,110] in weight.
# The center of the distrubution is around ~55-60 with afrequency that appears to be ~65. The distribution plots
# display frequency (y-axis) with range of [0,~65], and weight in kg (x-axis) with a range of ~[40,110].

# What is the probability that a randomly chosen young adult female is taller than 6 feet (about 182 cm)?
# For this we need to make a Z table and and to do so we use the following command:
# > 1 - pnorm(q = 182, mean = fhgtmean, sd = fhgtsd)
# Which will output "[1] 0.004434387"

# Then we input the following command:
# > sum(fdims$hgt > 182)/length(fdims$hgt)
# Which will output "[1] 0.003846154"

# -------------------------------------------------------------------------------------------------------------------
# Exercise 6
# Using the figures on the next page, match the histogram to its normal probability plot
# To solve this question, I created Normal Q-Q Plots for each value being tested
# (a) The histogram for female bi-iliac diameter (bii.di) belongs to normal probability plot letter _B_
# (b) The histogram for female elbow diameter (elb.di) belongs to normal probability plot letter _C_ 
# (c) The histogram for general age (age) belongs to normal probability plot letter _D_
# (d) The histogram for female chest depth (che.de) belongs to normal probability plot letter _A_

# -------------------------------------------------------------------------------------------------------------------
# Exercise 7
# Note that normal probability plots C and D have a slight stepwise pattern. Why do you think this is the case?
# Plot C and D have a slight stepwise pattern because of the values inputted. When looking into the age values, they
# are all rounded down to a whole number. Similarly, the values of elb.di are very close to a whole number. As a
# result, the plots have a slight stepwise pattern as values are well spaced out from one another.

# -------------------------------------------------------------------------------------------------------------------
# Exercise 8
# Make a normal probability plot for female knee diameter (kne.di). Based on this normal probability plot, is this
# variable left skewed, symmetric, or right skewed? Use a histogram to confirm your findings.
# The normal plot is very poor when showing the approximation of female knee diameters because many points are not on
# the line of best fit. There is a lot of deviation towards the right edge meaning that the vairable will be
# right-skewed. The plot can be seen on the pdf "Assignemnt_2 Exercise_8.1" 
# This is veriffied by the histogram which can be seen on the pdf "Assignemnt_2 Exercise_8.2"