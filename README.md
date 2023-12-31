# Hollywood-Profitable-Movies
Aim: To analyze the performance of Hollywood Movies (Year 2007-2012)   
Data: Title, genre, studio, profitability and ratings for movies released 2007-2012. 
Source: InformationIsBeautiful.net  
Datalink:  https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv

Findings – 
1. Dataset was quite clean with very fewer null values. 
2. Basic Exploratory Analysis in R was quite straight forward.
3. Column names was not appropriate so I have changed few column names.
4. Dataset have good number of numeric columns, so I was able to create 4 Dashboards. More dashboards are possible.
   
Analysis Flow -
1.	Data was first imported in RStudio. 
2.	Initial Exploratory Analysis is done. (Dimension 74 by 8)
3.	Missing values have been found.
4.	Dropped the missing values. (New Dimension 70 by 8)
5.	Scatter Plot and Bar Chart have been created in R.
6.	Cleaned data is exported.
7.	Cleaned Data (named clean_df) from R is being imported in Power BI.

I have written few DAX functions in order to create few charts.
1.	Year Count – Which count the number of times particular year appears
2.	Yearly Profit – In order to find year wise profit 
3.	Genre Yearly Profit – In Order to find Genre wise Yearly Profit


![image](https://github.com/sapnakhandelwal/Hollywood-Profitable-Movies/assets/147053399/70ff84b8-82d1-47f3-b245-45e2264ce288)


![image](https://github.com/sapnakhandelwal/Hollywood-Profitable-Movies/assets/147053399/97c83eb0-e085-41e5-9037-2b610457855d)


![image](https://github.com/sapnakhandelwal/Hollywood-Profitable-Movies/assets/147053399/1c68c8f4-7a75-4557-8e42-97d02b125947)


![image](https://github.com/sapnakhandelwal/Hollywood-Profitable-Movies/assets/147053399/2eb1e4bb-54aa-41b6-b739-b6e8c921459a)







