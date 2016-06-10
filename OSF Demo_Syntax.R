# Let's analyze some data from ANES 2012.
# Married and unmarried people's trust in federal government
# Set directory
data <- read.csv("OSF Demo_raw_data.csv", header=TRUE)
View(data)
length(which(data$dem_marital==1)) # n = 88
length(which(data$dem_marital==6)) # n = 48
hist(data$trustgov_trustgrev)
data$trustgov_trustgrev[which(data$trustgov_trustgrev<1)] <- NA
married <- subset(data, dem_marital==1)
notmarried <- subset(data, dem_marital==6)
t.test(married$trustgov_trustgrev, notmarried$trustgov_trustgrev)
# No difference. t(53) = 0.04, p = 0.967, M(married) = 3.49, M(not married) = 3.48.