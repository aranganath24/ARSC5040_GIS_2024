library(raster)
library(terra)
library(tmap)
library(sf)
library(exactextractr)

# Read in USA raster
usa_raster<-raster("/Users/adra7980/Documents/gis_class_scratch/scratchdata/usa_ppp_2019.tif")

# Read in NYC shapefile
nyc_polygon<-st_read("/Users/adra7980/Documents/gis_class_scratch/week3/raster_tutorial_Data/nyc_shapefile/nyu_2451_34490.shp")

# Convert nyc_polygon to WGS84 for cropping
nyc_polygon_4326<-st_transform(nyc_polygon, 4326)

# Convert "nyc_polygon_4326" to spatial data frame
nyc_spatial_df<-as(nyc_polygon_4326, "Spatial")

# Crop "usa_raster" to "nyc_spatial_df" bounding box
nyc_cropped<-crop(usa_raster, nyc_spatial_df)

# View "nyc_cropped"
tm_shape(nyc_cropped)+
  tm_raster()

# Mask "nyc_cropped" to "nyc_spatial_df" borders
nyc_masked<-mask(nyc_cropped, nyc_spatial_df)

# View "nyc_masked"
tm_shape(nyc_masked)+
  tm_raster()

# Create SpatRaster from "nyc_masked"
nyc_spatraster<-rast(nyc_masked)

# Convert "nyc_spatraster" to NYC projection
nyc_spatraster_2263_near<-project(nyc_spatraster, "EPSG:2263", method = "near")
nyc_spatraster_2263_near

nyc_spatraster_2263_bilinear<-project(nyc_spatraster, "EPSG:2263", method = "bilinear")
nyc_spatraster_2263_bilinear

# Extract zonal statistics for boroughs in projected coordinates
exact_extract(nyc_spatraster_2263_bilinear, nyc_polygon, fun="sum")

# Extract zonal statistics for boroughs in WGS84
exact_extract(nyc_spatraster, nyc_polygon_4326, fun="sum")


https://www.populationu.com/cities/new-york-city-population
https://geocompr.robinlovelace.net/reproj-geo-data.html



