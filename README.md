# European Earnings Index | Is your country really that whealty?
Check the built model using the following link:
https://app.powerbi.com/groups/me/reports/80f6d677-44dd-4e08-a9de-7cdc4509e71b/ReportSection62969327c7b5f7f103a1?experience=power-bi

## Table of Contents
- [Aim](#aim)
- [Data Source](#data-sources)
- [Data Cleansing](#data-cleansing)
- [Model Engineering](#model-engineering)
- [Analysis](#analysis)
- [Results](#results)

## Aim
The aim of this project is to determine and study the annual intra-national wealth of the different European Union countries, as well as its evolution, during the period spanning the years 2014-2022.

In order to analyze it, a new index has been created called the European Earnings Index (EEI). This index adjusts the net income of the average worker with the price level of the countries that belong to the European Union. 

## Data sources
Data has been obtained from two indicators provided by Eurostat: 
- Net Earnings: Determines the net earnings of the average worker by subtracting the gross earnings with income taxes and social security contribution. 
- Price Level Index (PLI): Determines the price level of one country relative to another in the European Union.

## Data cleansing
Both tables present a similar format and will be treated as follows:
1. All rows that have nothing to do with the data to be studied have been deleted. 
2. Years have been converted from name column to row data.
3. All data that was missing has been filled:
3.1. Net Earnings table: Data regarding the year 2015 and 2016 in Cyprus has been filled by distributing the growth it undergoes from 2014 to 2017 but keeping its total intact.
3.2. Price Level Index table: Data regarding the year 2022 has been filled by applying the simple moving average of the last 3 years.

## Model engineering 
New tables have been created in order to better analyze what factors influence on the overall growth and prosperity: Specifically: 
1. If the nation belongs to the Eurozone.
2. Decade of incorporation to the European Union.
3. The region where the country belongs to, based on the EuroVoc’s classification. 
Data has been combined into a single table in order to calculate the European Income Index as well as its Year-Over-Year variance. The following formula has been applied:

## Analysis
### EU
At the European level, the average income currently stands at 22284.40 PPS and the total average growth since 2014 is 24%.
### Growth
The nations that have grown the most on average belong to Eastern and Northern Europe, do not belong to the Eurozone and they have incorporated into the EU at the 21th century.
The nations that have grown the least on average belong to Western and Southern Europe, belong to the Eurozone and joined between 1970 and 1989.
### Wealth
The nations that have the highest EEI value on average are the Western and Southern European nations and founded the European Union or joined at the early 2000s. 
The nations that have the lowest EEI value on average are the Eastern and Northern European nations that joined between 1970 and 1989.

### Results
1. At the level of nations, we can see that, with the exception of Greece, Luxembourg and Ireland, workers are experiencing economic growth.  
2. The most successful nations on average are the Eastern and Northern European nations that joined the EU at 21st century but have not joined the Eurozone. Their average EEI value is slightly smaller than those with the highest value, but their growth value is superior than the previously mentioned. Thus, soon will outperform them on that regard.
3. The nation that joined between at the 1970s – 1989 period are the worst performers on average in both growth and wealth.
