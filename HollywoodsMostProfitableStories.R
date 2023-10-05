
# STEP 1 : Initial Exploratory Analysis

#Load library:

install.packages("tidyverse")
library(tidyverse) 

# Reading the CSV file and assign it to dataframe named df

df<- read.csv("C:/Users/suhan/Desktop/Data Technicican/R/HollywoodsMostProfitableStories.csv")

# View how the dataframe looks like
view(df) # By viewing the dataframe it seems quite clean with less number of missing values
         
# Checking all the columns of the dataframe
names(df) # DataFrame has 8 columns - "Film","Genre","Lead.Studio","Audience..score..",
          #  "Profitability","Rotten.Tomatoes..","Worldwide.Gross","Year" 

# Changing the columns name
colnames(df) <- c("Film","Genre","Lead_Studio","Audience_Score",
                  "Profitability","Rotten_Tomatoes","Worldwide_Gross","Year" )
view(df)

# Checking if columns name have been changed            
names(df)

# View first 6 rows of the dataframe
head(df)

# View last 6 rows of the dataframe
tail(df)

# Shape of the dataframe
dim(df) # 74 by 8

# Check all the datatypes in the dataframe
str(df)


#STEP 2 : Clean Data

# Check for missing values
colSums(is.na(df))

# Check sum of duplicates

sum(duplicated(df$Film))               # 0
sum(duplicated(df$Genre))              # 68
sum(duplicated(df$Lead_Studio))        # 60
sum(duplicated(df$Audience_Score))     # 33
sum(duplicated(df$Profitability))      # 2
sum(duplicated(df$Rotten_Tomatoes))    # 24
sum(duplicated(df$Worldwide_Gross))    # 0
sum(duplicated(df$Year))               # 69

# Drop missing values using drop_na() which Drop Rows with Missing Values in Any Column
df1 <- df %>% drop_na()

# Check to make sure that missing values have been removed
colSums(is.na(df1))

# Checking for dimension of new dataframe df1
dim(df1)  # 70 by 8, 4 rows have been dropped
view(df1)

# Step 3 : Exploratory Data Analysis

# Summary Statistics
summary(df1) # Provide Statistics Summary of entire dataframe

# Scatter plot between Lead_Studio and Rotten_Tomatoes
ggplot(df1, aes(x=Lead_Studio, y=Rotten_Tomatoes)) + 
       geom_point()+ scale_y_continuous(labels = scales::comma) +
       coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))

# Bar Chart between Year and Frequency(Count) of the Year
ggplot(df1, aes(x=Year)) + geom_bar()

# STEP 4: Export Data

write.csv(df1, "C:/Users/suhan/Desktop/Data Technicican/R/clean_df.csv")




