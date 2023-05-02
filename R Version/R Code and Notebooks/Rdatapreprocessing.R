if (!require("tidyverse")) install.packages("tidyverse")
library(tidyverse)
if (!require("janitor")) install.packages("janitor")
library(janitor)
if (!require("lubridate")) install.packages("lubridate")
library(lubridate)


#Load the original data
library(readr)
greatrecession <- read_csv("Data/greatrecession.csv", 
						   col_types = cols(`Home Vacancy Rate (Percent)` = col_double(), 
						   				 `Home Ownership Rate (Percent)` = col_double(), 
						   				 `Median Household Income (Current Dollars)` = col_double(), 
						   				 `Lower Bound Estimate Median Household Income (90% Confidence)` = col_double(), 
						   				 `New Private Housing Structures Authorized by Building Permits (Units)` = col_double(), 
						   				 `Accomodation and Food Service Earnings (in Thousands)` = col_double(), 
						   				 `All Employees Leisure and Hospitality Food Service and Drinking Places (in Thousands)` = col_double(), 
						   				 `People 25 and Older Who Have Competed a Graduate or Professional Degree (Percent)` = col_double(), 
						   				 `Bachelor's Degree or Higher(Percent)` = col_double(), 
						   				 `High School Graduate Or Higher (Percent)` = col_double(), 
						   				 `Education Level` = col_character(), 
						   				 `Education %` = col_double(), `Business Applications` = col_double(), 
						   				 Date = col_date(format = "%m/%d/%Y")))
View(greatrecession)
#View the column names
names(greatrecession)

#Re-arrange the column names
greatrecession <- greatrecession %>% 
	select(Date, State, everything())

#Make sure the columns are re-ordered
greatrecession %>% names()

#Clean the variable names
greatrecession <- greatrecession %>% clean_names()

#Check the cleaning
greatrecession %>% names()

#Finding and Processing Categories
greatrecession %>% summary()

#State should be a factor
greatrecession$state <- greatrecession$state %>% as.factor()

#Education Level should be a factor
greatrecession$education_level <- greatrecession$education_level %>% as.factor()

# Create Time Periods.
# A useful thing for us here is to create a new variable called Period as a factor.
greatrecession <- greatrecession %>% 
	mutate(year = year(date)) %>%
	mutate(period = as.factor(year))

# Just checking the variable we created.
class(greatrecession$period)
levels(greatrecession$period)

# label the factors into 3 categories - Pre-Recession, Recession, and Post-Recession.
greatrecession$period <- 
	recode(greatrecession$period,
		   '2000' = "Pre-Recession",
		   '2001' = "Pre-Recession",
		   '2002' = "Pre-Recession",
		   '2003' = "Pre-Recession",
		   '2004' = "Pre-Recession",
		   '2005' = "Pre-Recession",
		   '2006' = "Pre-Recession",
		   '2007' = "Pre-Recession",
		   '2008' = "Recession",
		   '2009' = "Recession",
		   '2010' = "Post-Recession",
		   '2011' = "Post-Recession",
		   '2012' = "Post-Recession",
		   '2013' = "Post-Recession",
		   '2014' = "Post-Recession",
		   '2015' = "Post-Recession",
		   '2016' = "Post-Recession",
		   '2017' = "Post-Recession",
		   .default = "Other"
	)

#Now move the period to the beginning of the data.

greatrecession <- greatrecession %>% 
	select(period, everything())


# Just double checking the variable we created.
class(greatrecession$period)
levels(greatrecession$period)

#Check names again
greatrecession %>% names()

#Save the data
RecessionData <- greatrecession
save(RecessionData, file = "Data/RecessionData.RData")
load("~/UNCG/IAF 605/R Assignment 1/Data/RecessionData.RData")
View(RecessionData)
