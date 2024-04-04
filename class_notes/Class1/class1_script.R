
# Set Up ------------------------------------------------------------------

# install package
install.packages("tmap")

# install all required packages
install.packages("WDI")
install.packages("sf")
install.packages("tmap")
install.packages("rnaturalearth")
install.packages("rnaturalearthdata")
install.packages("tidyverse")
install.packages("grid")

# More concise syntax to install packages
install.packages(c("WDI", "sf", "tmap", "rnaturalearth", "rnaturalearthdata", "tidyverse", "grid"))

# load libraries
library(WDI)
library(sf)
library(tmap)
library(rnaturalearth)
library(rnaturalearthdata)
library(tidyverse)
library(grid)

# disable spherical geometries
sf_use_s2(use_s2 = F)

# Preliminaries -----------------------------------------------------------

# assign value 5 to new object named x
x<-5

# Print value assigned to object "x"
x

# Main lesson -------------------------------------------------------------

# Brings spatial dataset of country boundaries into R environment using the rnaturalearth package, and then assigns this spatial dataset to an object named "country_boundaries"
country_boundaries<-ne_countries(scale="medium", returnclass="sf")

# View "country_boundaries" data in R Studio Data Viewer
View(country_boundaries)

# Extracts "geometry" column from country_boundaries
country_boundaries$geometry

# maps geographic features (i.e. countries) of "country_boundaries" as polygons using tmap package functions
tm_shape(country_boundaries)+
  tm_polygons()

# maps geographic features (i.e. countries) of "country_boundaries" as polygons using tmap package functions; polygons rendered in "darkorange"
tm_shape(country_boundaries)+
  tm_polygons("darkorange")

# Maps country polygons from "country_boundaries" in "cyan1"
tm_shape(country_boundaries)+
  tm_polygons("cadetblue2")

# assigns dark orange world map to object named "world_map_orange"
world_map_orange<-tm_shape(country_boundaries)+
  tm_polygons("darkorange")

# prints contents of "world_map_orange"
world_map_orange

# set tmap mode to "view"
tmap_mode("view")

# prints contents of "world_map_orange" in "view" mode
world_map_orange

# set tmap mode to "plot"
tmap_mode("plot")

# prints contents of "world_map_orange" in print mode
world_map_orange

# Deletes Antarctica from "country_boundaries"
country_boundaries<-country_boundaries %>% filter(iso_a3 !="ATA")

# maps updated "country_boundaries" object
tm_shape(country_boundaries)+
  tm_polygons()

# Extracts variable names and codes for development indicator series, and assigns it to a new object named "WDI_variables"
WDI_variables<-WDIsearch()

# Views data assigned to "WDI_variables" in data viewer
View(WDI_variables)

# Extracts WDI indicator that we want and assigns the resulting data to an object named "trade_gdp_2010_2018"
trade_gdp_2010_2018<-WDI(country="all", # specifies we want data for all countries available
                         indicator="NE.TRD.GNFS.ZS", # specifies code for desired indicator
                         start=2010, # Start year for data series
                         end=2018, # End year for data series
                         extra=T) # returns ISO codes


# View "trade_gdp_2010_2018" in R Studio data viewer
View(trade_gdp_2010_2018)

# Extracts 2015 observations from "trade_gdp_2010_2018", renames "NE.TRD.GNFS.ZS" column to "trade_gdp_2015", and assigns result to new object named "trade_gdp_2015"
trade_gdp_2015<-
  trade_gdp_2010_2018 %>%  # Establishes object to be modified
  filter(year=="2015") %>% # Subsets observations where the "year" variable equals "2015"
  rename(trade_gdp_2015=NE.TRD.GNFS.ZS) # renames column containing WDI variable

# Views "trade_gdp_2015" in data viewer
View(trade_gdp_2015)

# Joins "trade_gdp_2015" to "country_boundaries" using 3-digit ISO codes; these ISO codes are contained in a column named "iso_a3" in "country_boundaries", and "iso3c" in "trade_gdp_2015"; the product of the join is assigned to a new object that is named "trade_2015_spatial"
trade_2015_spatial<-inner_join(country_boundaries, trade_gdp_2015,
                               by=c("iso_a3"="iso3c"))

# Views "trade_2015_spatial" data in data viewer
View(trade_2015_spatial)

# Maps country-level variation in the "trade_gdp_2015" variable
tm_shape(trade_2015_spatial)+ # specifies spatial object
  tm_polygons(col="trade_gdp_2015", # specifies column in spatial object to be mapped
              n=5, # sets number of break points
              style="jenks", # specifies how data is to be partitioned across break points
              palette="BuGn") # sets color palette


# Maps country-level variation in the "trade_gdp_2015" variable
tm_shape(trade_2015_spatial)+ # specifies spatial object
  tm_polygons(col="trade_gdp_2015", # specifies column in spatial object to be mapped
              n=7, # sets number of break points
              style="quantile", # specifies how data is to be partitioned across break points
              palette="YlOrBr") # sets color palette


# changes color palette, number of breaks, and legend position
tm_shape(trade_2015_spatial)+
  tm_polygons(col="trade_gdp_2015",
              n=7,
              style="quantile",
              palette="YlOrBr")+
  tm_layout(legend.outside=T, # Sets legend outside map frame
            legend.outside.position = "bottom") # Sets position of map legend on bottom


# removes bounding box
tm_shape(trade_2015_spatial)+
  tm_polygons(col="trade_gdp_2015",
              n=7,
              style="quantile",
              palette="YlOrBr",
              title="Trade as a % of GDP,\n2015", # Sets legend title
              textNA="No Data")+ # Relabels "Missing" Category to "No Data"
  tm_layout(legend.outside=T,
            legend.outside.position = "bottom",
            frame=FALSE) # Removes bounding box


# adds main title for map
tm_shape(trade_2015_spatial)+
  tm_polygons(col="trade_gdp_2015",
              n=7,
              style="quantile",
              palette="YlOrBr",
              title="Trade as a % of GDP,\n2015",
              textNA="No Data")+
  tm_layout(legend.outside=T,
            legend.outside.position = "bottom",
            main.title="Crossnational Variation in Commercial Integration, 2015",
            main.title.size=1,
            main.title.position="center",
            frame=FALSE)

# adds whitespace
tm_shape(trade_2015_spatial)+
  tm_polygons(col="trade_gdp_2015",
              n=7,
              style="quantile",
              palette="YlOrBr",
              title="Trade as a % of GDP,\n2015",
              textNA="No Data")+
  tm_layout(legend.outside=T,
            legend.outside.position = "bottom",
            main.title="Crossnational Variation in Commercial Integration, 2015",
            main.title.size=1,
            main.title.position="center",
            inner.margins=c(0.06,0.10,0.10,0.08), # Sets margins to create whitespace
            frame=FALSE)


# adds map credits
tm_shape(trade_2015_spatial)+
  tm_polygons(col="trade_gdp_2015",
              n=7,
              style="quantile",
              palette="YlOrBr",
              title="Trade as a % of GDP,\n2015",
              textNA="No Data")+
  tm_layout(legend.outside=T,
            legend.outside.position = "bottom",
            main.title="Crossnational Variation in Commercial Integration, 2015",
            main.title.size=1,
            main.title.position="center",
            inner.margins=c(0.06,0.10,0.10,0.08), # Sets margins to create whitespace
            frame=FALSE,
            attr.outside = TRUE)+ # Places credits section outside map
  tm_credits("Map Author: Aditya Ranganath\nData Source: World Bank\nDevelopment Indicators (WDI)", position=c(0.78,0), size=0.38) # Specifies content, position, size of credits


# Assigns map to new object named "trade_map_2015"
trade_map_2015<-
  tm_shape(trade_2015_spatial)+
  tm_polygons(col="trade_gdp_2015",
              n=7,
              style="quantile",
              palette="YlOrBr",
              title="Trade as a % of GDP,\n2015",
              textNA="No Data")+
  tm_layout(legend.outside=T,
            legend.outside.position = "bottom",
            main.title="Crossnational Variation in Commercial Integration, 2015",
            main.title.size=1,
            main.title.position="center",
            inner.margins=c(0.06,0.10,0.10,0.08), # Sets margins to create whitespace
            frame=FALSE,
            attr.outside = TRUE)+ 
  tm_credits("Map Author: Aditya Ranganath\nData Source: World Bank\nDevelopment Indicators (WDI)", position=c(0.78,0), size=0.38) 



# prints "trade_map_2015"
trade_map_2015

# exports "trade_gdp_2015" map as pdf file to working directory
tmap_save(tm=trade_map_2015, 
          filename="trade_gdp_2015.pdf", 
          width=1920, 
          height=1080)


