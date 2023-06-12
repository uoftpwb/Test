## and Casey Hon

#Loading a base R dataframe. Use the data() function to see what base r datasets are available
data(iris)

#To view the dataframe in another window, you use the view() function
View(iris)

#Has sepal length, sepal width, petal length, petal width, and species as variables. all of these variables make up a dataframe.

#To have certain functions or datasets, you need certain packages!!! 

install.packages("ggplot2")

library(ggplot2)
mpg

#You'll want to import your own data (usually excel sheets) from another application/file.
#There's a variety of functions that help you do this, depending on the file format your importing.
#E.G. read_excel, read_csv, import()
library(readxl)
read_excel("./GPI-2022-overall-scores-and-domains-2008-2022.xlsx")

#Now, if I want to actually use this dataframe, I need to make it an object/label it.
GPI <- read_excel("./GPI-2022-overall-scores-and-domains-2008-2022.xlsx")
view(dataframe)

#DATA CLEANING
#selecting columns in a dataframe
install.packages("dplyr") # dplyr is a useful package for manipulating data, let's install it
library(dplyr)
GPI_1 <- GPI %>% select(c("Country", "iso3c", 4:17)) 

# TO-DO: section below still needs to be updated
# #selecting and renaming variables in a dataframe
# gallupExtracted <- GPI %>% 
#   select(WPID, WP1220.AGE = WP1220, INCOME_5, 
#          COUNTRYNEW, COUNTRY_ISO3, WGT, 
#          YEAR_WAVE, YEAR_CALENDAR, WP1219.MALE = WP1219, 
#          EMP_2010, WP1223.MARITAL = WP1223, WP27.COUNT_ON_HELP = WP27,
#          WP117.MONEY_STOLEN = WP117, WP118.ASSAULTED = WP118, WP43.SHELTER = WP43,
#          WP40.FOOD = WP40, WP97.HEALTH_CARE = WP97, WP23.HEALTH_PROB = WP23, 
#          WP68.PHYS_PAIN = WP68, WP60.WELL_RESTED = WP60, WP134.CITIZ_ENGA = WP134,
#          M30.ECON_COND = M30, WP2319.FEEL_HSEINCOME = WP2319, stress = WP71)
# write.csv(gallupExtracted, "gallupExtracted.csv", row.names = FALSE)
# 
# 
# #converting from wide to long format...look at gpi_1 and gpi_2
# GPI_2 <- gather(GPI_1, key = "Year", value = "GPI")
# 
# 
# #You can even create your own function. E.g. Kenith made a function to change "DK" and "Refused" responses in Gallup data to NA
# na_codes <- function(x, ...) {
#   for(y in list(...))
#     x[x == y] <- NA
#   x
# }
# 
# #recoding responses
# #no social support was 0, social support was 1
# #here, changed social support to 0, no social support to 1 - meaning results come out as: no social support increases/reduces stress this much.  
# GWP_GPI_data$WP27.COUNT_ON_HELP <- 1 - GWP_GPI_data$WP27.COUNT_ON_HELP
# 
# 
# #merging dataframes
# GallupWithGDP <- left_join(gallupCleaned, GDPbase, by = c("YEAR_WAVE" = "Year", "COUNTRY_ISO3" = "Country Code"))
# 
# 
# #centering variables
# GWP_GPI_data$WP1220.AGE <-scale(GWP_GPI_data$WP1220.AGE)
# 
# #factoring variables
# GWP_GPI_data$WP1219.MALE <-as.factor(GWP_GPI_data$WP1219.MALE)
# 
# 
# #DATA ANALYSIS
# #Model 1: Predict how perceived stress may be linked to GPI scores with GDP, age, gender, income as controls
# mod_base <- glmer(stress~ GPI + year + GDPperCapPPP + INCOME_5 + WP1220.AGE + WP1219.MALE + (GPI_within + year|COUNTRYNEW), dataframe)
# 
# 
# #DATA VISUALIZATION
# ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
#   geom_point()
# 
# flower_plot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
#   geom_point()
