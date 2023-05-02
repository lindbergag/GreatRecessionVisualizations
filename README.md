# Great Recession Visualizations
## Exploration of the Great Recession and Novel Theories Using Tableau and R

This multi-stage project was developed to visualize various impacts and novel theories regarding the 'Great Recession' - a period of economic contraction beginning in December 2007 and ending in June 2009. Similar visualizations were developed in Tableau and R to learn the limitations, challenges, and benefits of each tool.

## Dataset
A variety of data was retrieved through [GEOFRED](https://fredaccount.stlouisfed.org/public/dashboard/83217) which is hosted by the Federal Reserve Bank of St. Louis. For a detailed breakdown of which datasets were used, please review the table provided in the Methodology section of the [Tableau Executive Summary](https://github.com/lindbergag/GreatRecessionVisualizations/blob/master/Tableau%20Version/Executive_Summary_Tableau.pdf). 

## Tableau
In the first part of this project: 
1. Tableau Prep was used to clean the data and combine the various datasets. 
 - The cleaning and merging steps can be seen by opening the files in the [Flows](https://github.com/lindbergag/GreatRecessionVisualizations/tree/master/Tableau%20Version/Flows) directory with Tableau Prep.
2. Tableau (Desktop) was used to develop visualizations, Dashboards, and a Story.
 - The Dashboard and Story can be seen by opening the [Great_Recession_Tableau.twbx File](https://github.com/lindbergag/GreatRecessionVisualizations/blob/master/Tableau%20Version/Great_Recession_Tableau.twbx) with Tableau.

![Tableau Story](https://github.com/lindbergag/GreatRecessionVisualizations/blob/master/Tableau%20Version/Story%20Pictures/Great%20Recession%20Story.gif) 

## R
In the second part of this project
1. The dataset developed in Tableau prep was imported and processed to be appropriate for use in R. [Rdatapreprocessing](https://github.com/lindbergag/GreatRecessionVisualizations/blob/master/R%20Version/R%20Code%20and%20Notebooks/Rdatapreprocessing.R)
2. Visualizations, dashboards, and a Story were developed using ggplot and shiny. [RecessionAnalysis.Rmd](https://github.com/lindbergag/GreatRecessionVisualizations/blob/master/R%20Version/R%20Code%20and%20Notebooks/RecessionAnalysis.Rmd)
3. The Dashboard / Story can be viewed by downloading and opening [RecessionAnalysis.html](https://github.com/lindbergag/GreatRecessionVisualizations/blob/master/R%20Version/R%20Code%20and%20Notebooks/RecessionAnalysis.html)

![R Story](https://github.com/lindbergag/GreatRecessionVisualizations/blob/master/R%20Version/Story%20Pics/greatrecessionr.gif)



## Requirements
* Tableau
* R
- Tidyverse
- Janitor
- Lubridate
- DT
- Hmisc
- plotly
- gridExtra
- wesanderson
- viridis
- maps
- ggthemes
- shiny
- shinydashboard
- scales


## Setup
### Tableau
1. Clone the repository.
2. Open the [Great_Recession_Tableau.twbx](https://github.com/lindbergag/GreatRecessionVisualizations/blob/master/Tableau%20Version/Great_Recession_Tableau.twbx) File

### R
1. Clone the repository
2. Install the required packages
3. Run the scripts



## Contributing

Feel free to fork the repository and submit pull requests with any improvements or bug fixes.

## Author's notes

My thoughts and insight can be found in the [Tableau Executive Summary](https://github.com/lindbergag/GreatRecessionVisualizations/blob/master/Tableau%20Version/Executive_Summary_Tableau.pdf) and in the [R Executive Summary](https://github.com/lindbergag/GreatRecessionVisualizations/blob/master/R%20Version/Great_Recession_Executive_Summary_R.pdf)
 
