# Much of the code below, I've already learned in other Harvard Online courses.
# However, to earn a program certificate in Data Analysis for Life Sciences,
# you must earn the Statistics and R course certificate.

# Store raw data into objects
dat <- read.csv("mice-data/femaleMiceWeights.csv")

# load dplyr
library(dplyr)

# filter() lets you filter certain rows of the data
controls <- filter(dat, Diet == "chow")
controls

# select() lets you select certain columns of the data 
controls <- select(controls, Bodyweight)

# to convert this into a numerical vector, we can use unlist()
unlist(controls)

# dplyr is also the package that allows us to use the pipe operator, which
# lets us do a series of commands in one line
controls <- dat %>% filter(Diet == "chow") %>%
  select(Bodyweight) %>%unlist()
mean(controls)

library(downloader)
url="https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- basename(url)
download(url,filename)


