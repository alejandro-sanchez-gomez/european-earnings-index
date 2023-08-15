# European Earnings Index | Average Annual Purchasing Power of all EU Member States
The index calculates the average annual purchasing power of all EU Member States by using the average net income of a worker from a given country and its price level index relative to the other member states. Aditionally, an interactive dashboard has been developed using Microsoft Power Bi.

## Table of Contents
- [About](#about)
- [Data Source](#data-sources)
- [Data Cleansing](#data-cleansing)
- [Model Engineering](#model-engineering)
- [Analysis](#analysis)
- [Results](#results)
- [Contributing](#contributing)
- [License and Credits](#license-and-credits)

## About
The objectives of the project are the following:
1. Create a new index that measures the average annual purchasing power of all EU Member States 
2. Develop an interactive dashboard to display all data and to make custom analysis.
3. Write a report that explores the factors that influence why one country has a higher value when compared to another.

## Data sources
Data was gathered from the following two Eurostat indicators:
- Net Earnings: This index calculates the average worker's net earnings by deducting income taxes and social security contributions from their gross wages. 
- [Price Level Index (PLI)](https://ec.europa.eu/eurostat/cache/metadata/en/prc_ppp_esms.htm): This index contrasts a nation's price levels with those of the other European Union member states by dividing PPPs by their current nominal exchange rate. 

## Data cleansing
Both tables have a comparable layout and will be handled as follows:
1. All rows that don't relate to the information being studied have been deleted.
2. Years have been converted from the column's name to row data.
3. All gaps in the data have been filled:
3.1. Net Earnings Table: Cyprus's 2015 and 2016 data has been filled in by dividing the growth it experienced from 2014 to 2017 while keeping its overall total the same.
3.2. Price Level Index Table: The simple moving average of the previous three years was used to fill in the data for the year 2022.

## Model engineering 
To better understand what influences overall growth and prosperity, new tables have been made. 
1. Whether the country is a member of the Eurozone.
2. Decade of incorporation into the European Union.
3. The region to which the nation belongs according to the EuroVoc division.

The European Income Index and its Year-Over-Year variance have been determined by combining the data into a single table. The formula below has been used:

![image](https://github.com/Levantino-Engineering/european-earnings-index/assets/103794823/b476a995-9d40-45e1-838f-5d2d39438aea)

## Analysis
### EU
At the European level, the current average income is 22284.40 PPS, representing an overall average growth of 24% since 2014.
### Growth
The countries that have experienced the greatest average growth are located in Eastern and Northern Europe; they are not members of the Eurozone and they joined the EU in the twenty-first century.
The countries that have experienced the least average growth are located in Western and Southern Europe; they are members of the Eurozone and have joined the union between 1970 and 1989.
### Wealth
The Western and Southern European countries that either co-founded the European Union or joined in the early 2000s have the highest average EEI values.
The Eastern and Northern European countries that joined between 1970 and 1989 have the lowest average EEI values.

## Results
1. At the national level, we can see that workers are benefiting from economic growth, with the exception of Greece, Luxembourg, and Ireland.
2. The Western and Southern European countries that either co-founded the European Union or joined in the early 2000s are the most prosperous on average.
3. The Eastern and Northern European countries that joined between 1970 and 1989 have the highest growth value and their prosperity is slightly lower than those who have the highest. Consequently, they will soon outperform them in that respect.
4. The countries that joined between 1970 and 1989 have the worst growth and prosperity value on average.

### Contributing

Contributions are welcome! Please review the contribution guidelines on how to:

- Report issues
- File pull requests

### License and Credits

*Copyright © 2023 [Alejandro Sánchez](https://github.com/Levantino-Engineering) (Levantino Engineering)*

Licensed under the _GNU AGPLv3_, extended by a number of additional terms. This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY. For more information on the license please see the [LICENSE file](https://github.com/Levantino-Engineering/european-earnings-index/blob/main/LICENSE.txt) accompanying this add-on. The source code is available on [GitHub]([https://github.com/Levantino-Engineering/european-earnings-index/blob/main/European%20Earnings%20Index.pbix]).

----------------------------------------------------------

Return to the [Table Of Contents](#table-of-contents)
