#censusApp

This app is created using the source code from Shiny tutorial available at http://shiny.rstudio.com/.

##App Description
Uses `counties.rds` dataset of demographic data for each county in the United States, collected with the `UScensus2010` R package. Colorpleth maps are created using `maps` and `mapproj` packages. Users can select the ethnic group and percentage range to map on the map of continental US.

##File Description
`ui.R` - Creates the visual layout.  
`server.R` - R code that generates the output.  
`herlpers.R` - Renders plot using `map` function from `maps` pacakge.