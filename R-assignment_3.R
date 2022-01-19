# Assignment 3 - Mark Natavio
# -------------------------------------------------------------------------------------------------------------------
# Exercise 1
# This population distribution is not very even and symmetrical. The histogram of population area is skewed-right.
# We only see data from an area ranging from ~[0-4000] and nothing higher. A picture of the histogram can be seen
# on "Assignment_3 Exercise_1.pdf".

# -------------------------------------------------------------------------------------------------------------------
# Exercise 2
# After entering the command:
# > samp1 = sample(area, 50)
# A new value (samp1) is created

# -------------------------------------------------------------------------------------------------------------------
# Exercise 3
# Describe the distribution of this sample. How does it compare to the distribution of the population?
# To see the distribution of the sample I created a histogram by typing "hist(samp1)" on the command line. The image
# is saved as "Assignment_3 Exercise_3.pdf"
# The distribution of this sample has a single peak but it is not quite bell-shaped. The frequency (y-axis) ranges
# ~[0,25] and its area (x-axis) ranges ~[0,3000]. The center or the mean of the sample ranges ~[1000,1500] and
# there are no outliers.

# After inputting the command "mean(samp1)" into the console we get "[1] 1404.7" which is very close to the actual
# mean, which we can get by inputting the command "mean(area)" into the console. We get "[1] 1499.49"

# -------------------------------------------------------------------------------------------------------------------
# Exercise 4
# Take another sample of size 50, and call it samp2. How does the mean of samp 2 compare with the mean of samp1?
# To make samp2 I inputted "samp2 = sample(area, 50)"on the console. I also decided to make a historgram of samp2,
# by inputting "hist(samp2)" on the console. The histogram and values can be seen on the pdf 
# "Assignment_3 Exercise_4.1.pdf".
# Finally, I got the mean of samp2 by inputting "mean(samp2)" into the console, which outputs "[1] 1583.28".
# This means that the mean of samp2 is higher than the mean of samp1.

# Suppose we took two more samples, one of size 100 and one of size 1000. Which do you think would provide a more
# accurate estimate of the population mean?
# I believe that the sample of size 1000 will give a more accurate estimate of the population mean. This is because
# its size is higher, meaning that it takes into consideration more population areas.

sample_means50 = rep(0, 5000)
for (i in 1:5000){
  samp = sample(area, 50)
  sample_means50[i] = mean(samp)
}

hist(sample_means50)

# After running the previous code, wevalues are added and a the histogram of sample_means50 is created. This can be
# seen on the pdf "Assignment_3 Exercise_4.2.pdf".
# To adjust the bin width of the histogram I then inputted the following command on the console:
# > hist(sample_means50, breaks = 25)
# This results in a new historgram that can be inspected on "Assignment_3 Exercise_4.3.pdf"

# -------------------------------------------------------------------------------------------------------------------
# Exercise 5
# How many elements are there in sample_means50?
# Well there are 5000 samples of size 50 in sample_means50, so there are 5,000 elements.

# Describe the sample distribution
# The histogram of sample_means50 is single peaked and bellshaped. It is very symetrical and contains 1 outlier at
# the right side edge of the graph. The frequency (y-axis) ranges ~[0,600] and the areas of each sample (x-axis)
# ranges ~[1200,1900]. The center of the histogram appears to be ~[1480,1500].
# In fact, after inputting the command "mean(sample_means50)" we get "[1] 1500.307"

# Would you expect the distribution to change if we instead collected a 50,000 sample means?
# I think the distribution will change since we are generating a lot of new samples. 45,000 to be exact

# After running the following code:
sample_means50 = rep(0, 5000)

for (i in 1:5000){
  samp = sample(area, 50)
  sample_means50[i] = mean(samp)
  print(i)
}
# We get a counter that goes from 1 to 5000

# -------------------------------------------------------------------------------------------------------------------
# Exercise 6
# Initialize a vector of 100 zeros called sample_means_small.
sample_means_small = rep(0, 100)

# Run a loop that takes a sample of size 50 from area and stores the sample mean in sample_means_small, but only
# iterate from 1 to 100.
for (i in 1:100){
  samp = sample(area, 50)
  sample_means_small[i] = mean(samp)
}

# Print the output to your screen
# The output can be seen in "Assignment_3 Exercise_6.1.pdf"

# How many elements are there in this object called sample_means_small?
# 100 elements

# What does each element represent?
# Each element represents the mean of a sample of size 50 taken from area. 

sample_means10 = rep(0, 5000)
sample_means100 = rep(0, 5000)

for(i in 1:5000){
  samp = sample(area, 10)
  sample_means10[i] = mean(samp)
  samp = sample(area, 100)
  sample_means100[i] = mean(samp)
}
# After this code, we get the new values sample_means10 and sample_means100. This change can be seen in the Values
# tab. A closer look of my results can can be seen in "Assignment_3 Exercise_6.2.pdf"

par(mfrow = c(3,1)) # This allows us to see 3 plots in one page, can be set back by doing par(mfrow = c(1,1))

xlimits = range(sample_means10) # This results in variable xlimits having a value num[1:2] 1015 2302

hist(sample_means10, breaks = 20, xlim = xlimits)
hist(sample_means50, breaks = 20, xlim = xlimits)
hist(sample_means100, breaks = 20, xlim = xlimits)
# The histograms created by this code can be seen on "Assignment_3 Exercise_6.3.pdf"

# -------------------------------------------------------------------------------------------------------------------
# Exercise 7
# When the sample size is larger, what happens to the center?
# The center becomes sharper, that is to say it increases as the sample size increases.

# What about the spread?
# The spread is decreased as the sample size increases.

# -------------------------------------------------------------------------------------------------------------------
# Exercise 8
# Take a random sample of size 50 from price. Using this sample, what is your best point estimate of the population
# mean?
# To take a random sample of size 50 from price, I entered the following command on the console:
# > sample_price_size50 = sample(price, 50)

# To get the best point estimate of the population mean I inputted the following command into the console"
# > mean(sample_price_size50)
# which outputs "[1] 191873.3"

# -------------------------------------------------------------------------------------------------------------------
# Exercise 9
# Since you have access to the population, simulate the sampling distribution for xprice by taking 5000 samples from
# the population of size 50 and computing 5000 sample means. Store these means in a vector called sample_means50.

sample_means50 = rep(0, 5000)
for(i in 1:5000){
  samp = sample(price, 50)
  sample_means50[i] = mean(samp)
}

# I decided to reset the par settings
par(mfrow = c(1,1))

# Plot the data, then describe the shape of this sampling distribution. 
hist(sample_means50, breaks = 20)

# The histogram and values created at this point can be seen on the pdf "Assignment_3 Exercise_9.pdf"
# The histogram of sample_means50 is single peaked and bellshaped. It is very symetrical and contains no
# outliers. The frequency (y-axis) ranges ~[0,900] and the areas of each sample (x-axis) ranges ~[140000,220100].
# The center of the histogram appears to be ~180000.

# Based on this sampling distribution, what would you guess the mean home price of the population to be?
# I would guess that the mean is around ~180000

# Finally, calculate and report the population mean.
# To calculate the population mean I inputted the following command into the console.
# > mean(sample_means50)
# Which outputs "[1] 180484.6"

# -------------------------------------------------------------------------------------------------------------------
# Exercise 10
# Change your sample size from 50 to 150, then compute the sampling distribution using the same method as above, and
# store these means in a new vector called sample_means150. 

sample_means150 = rep(0, 5000)
for(i in 1:5000){
  samp = sample(price, 150)
  sample_means150[i] = mean(samp)
}

# I changed the par settings again to see both histograms of sample_means50 and sample_means150, making it easier to
# compare between one another
par(mfrow = c(2,1))

# Plot the data
xlimits = range(sample_means150) # changed xlimits to see the whole histogram of sample_means150
hist(sample_means50,breaks = 20, xlim = xlimits)
hist(sample_means150,breaks = 20, xlim = xlimits)
# The histogram created by this code can be seen on the pdf "Assignment_3 Exercise_10.pdf"

# Describe the shape of this sampling distribution
# The histogram of sample_means150 is similar to that of sample_means50. It is single peaked, very even, and it has
# a slight bellshaped curve It is very symetrical and contains no outliers. The frequency (y-axis) ranges ~[0,700]
# and the areas of each sample (x-axis) ranges ~[160000,210000].

# Compare it to the sampling distribution for a size of 50.
# Compared to the histogram of sample_means50, the histogram of sample_means150 is very similar. However, it appears
# to have lower frequency and a smaller spread.

# Based on this sampling distribution, what would you guess to be the mean sale price of homes in Ames?
# I would guess the mean sale price of homes in Ames to be ~180000. More precisely, by inputting the commands:
# > mean(sample_means50)
# We get the output "[1] 180484.6"
# > mean(sample_means150)
# We get the output "[1] 180805.8"

# -------------------------------------------------------------------------------------------------------------------
# Exercise 11
# Of the sampling distributions from 9 and 10, which has a smaller spread?
# The distribution with a smaller spread is that of Exercise 10 (sample_means150)

# If we’re concerned with making estimates that are more often close to the true value, would we prefer a
# distribution with a large or small spread?
# When making estimates clsoer to the true value we want a distribution with a smaller spread as it is closest to 
# actual value, meaning that it is more accurate.
