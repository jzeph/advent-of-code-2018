# PART 1
library(dplyr)

# Read in data
# Needed to copy/paste to github txt file to bypass oauth
df <- read.table("https://raw.githubusercontent.com/jzeph/advent-of-code-2018/master/day1input.txt")

# Get sum
sum(df)


# PART 2
# Make the column name more descriptive
names(df) <- c("input") 

# Add a new column to hold the cumulative sum
df <- mutate(df, freq = cumsum(input))

# Look for the duplicates i.e., when the entry occurs more than once
df[duplicated(df$freq)]

# There are no duplicates yet

# Try again (put one dataframe under the current dataframe)
df2 <- rbind(df, df)
df2$freq <- cumsum(df2$input)
df2[duplicated(df2$freq)]

