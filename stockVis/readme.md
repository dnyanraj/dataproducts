#stockVis

This app is created using the source code from Shiny tutorial available at http://shiny.rstudio.com/.

##App Description
Uses `quantmod` package to connect to Yahoo Finance API and query list prices for stock symbols entered by user. A timeseries chart is plotted using `chartSeries` function from `quantmod` package. Users can enter date range to enter historical data as well. Users have an option to plot the data on logarithmic scale, and adjust for inflation (inflation adjustments based on Customer Price Index data queried from Federal Reserve Bank of St. Louis).

##File Description
`ui.R` - Creates the visual layout.  
`server.R` - Uses reactive functions to get ticker symbol data from Yahoo API and perform inflation adjustments. Plots a timeseris chart using `chartSeries` fucntion.  
`herlpers.R` - Contains `adjust` function based on inflation data by setting `src='FRED'`.