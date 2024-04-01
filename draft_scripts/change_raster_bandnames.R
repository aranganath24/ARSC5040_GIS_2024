library(terra)

nyc_pop_2009<-rast("/Users/adra7980/Documents/git_repositories/ARSC5040_GIS_2024/class_notes/class3/data/nyc_rasters/nyc_2009_pop.tif")
nyc_pop_2019<-rast("/Users/adra7980/Documents/git_repositories/ARSC5040_GIS_2024/class_notes/class3/data/nyc_rasters/nyc_2019_pop.tif")

names(nyc_pop_2009)<-"nyc_2009_pop"
names(nyc_pop_2019)<-"nyc_2019_pop"

nyc_pop_2009
nyc_pop_2019

setwd("/Users/adra7980/Documents/git_repositories/ARSC5040_GIS_2024/class_notes/class3/data/nyc_rasters/raster_update")

writeRaster(nyc_pop_2009, "nyc_2009_pop.tif")
writeRaster(nyc_pop_2019, "nyc_2019_pop.tif")
