
# Read in NYC shapefile
NYC_shapefile<-st_read("/Users/adra7980/Documents/gis_class_scratch/week3/raster_tutorial_Data/nyc_shapefile/nyu_2451_34490.shp")

# Read in NYC subway stops
NYC_subway_stops<-st_read("/Users/adra7980/Documents/gis_class_scratch/week3/raster_tutorial_Data/subway_stops/stops_nyc_subway_may2019.shp")

# Overlay subway stops against nyc shapefile
tm_shape(NYC_shapefile)+
  tm_polygons()+
tm_shape(NYC_subway_stops)+
  tm_dots()

# Create 500 m buffers
subway_500_buffers<-st_buffer(NYC_subway_stops, 1640.42)

tm_shape(NYC_shapefile)+
  tm_polygons()+
tm_shape(subway_500_buffers)+
  tm_borders()+
tm_shape(NYC_subway_stops)+
  tm_dots()

# Dissolve Buffers
subway_500_buffers_dissolved<-subway_500_buffers %>% 
                              group_by() %>% 
                              summarise()

# Plot dissolved buffers
tm_shape(NYC_shapefile)+
  tm_polygons()+
tm_shape(subway_500_buffers_dissolved)+
  tm_borders()+
tm_shape(NYC_subway_stops)+
  tm_dots()


# Transform "subway_500_buffers_dissolved" to WGS84
subway_500_buffers_dissolved_4326<-subway_500_buffers_dissolved %>% st_transform(4326)


# Prepare Raster ----------------------------------------------------------

# Read in USA raster
usa_raster<-raster("/Users/adra7980/Documents/gis_class_scratch/scratchdata/usa_ppp_2019.tif")

# Convert nyc_polygon to WGS84 for cropping
nyc_polygon_4326<-st_transform(NYC_shapefile, 4326)

# Convert "nyc_polygon_4326" to spatial data frame
nyc_spatial_df<-as(nyc_polygon_4326, "Spatial")

# Crop "usa_raster" to "nyc_spatial_df" bounding box
nyc_cropped<-crop(usa_raster, nyc_spatial_df)

# Mask "nyc_cropped" to "nyc_spatial_df" borders
nyc_masked<-mask(nyc_cropped, nyc_spatial_df)

# View "nyc_masked"
tm_shape(nyc_masked)+
  tm_raster()

# View "nyc_masked" with dissolved subway polygons

tm_shape(nyc_masked)+
  tm_raster()+
tm_shape(subway_500_buffers_dissolved_4326)+
  tm_polygons()

# Calculate population in buffer zones
nyc_pop_within_buffer<-exact_extract(nyc_masked, subway_500_buffers_dissolved_4326, fun="sum")

# Calculate total nyc pop
nyc_pop<-sum(exact_extract(nyc_masked, nyc_polygon_4326, fun="sum"))

# Percentage of Population within buffer
buffer_pct<-((nyc_pop_within_buffer)/nyc_pop)*100

# Percentage of population more than 500m from subway (based on WGS84 coordinates)
outside_buffer_pct<-100-buffer_pct

# Calculation in Projected Coordinates ------------------------------------

# Create SpatRaster object from "nyc_masked"
nyc_spatraster<-rast(nyc_masked)

# Convert "nyc_spatraster" to NYC projection
nyc_spatraster_2263_bilinear<-project(nyc_spatraster, "EPSG:2263", method = "bilinear")
nyc_spatraster_2263_bilinear

# Extract zonal statistics for boroughs in projected coordinates
exact_extract(nyc_spatraster_2263_bilinear, nyc_polygon, fun="sum")
sum(exact_extract(nyc_spatraster_2263_bilinear, nyc_polygon, fun="sum"))

# Extract Zonal stats for dissolve buffers in projected coordinates
exact_extract(nyc_spatraster_2263_bilinear, subway_500_buffers_dissolved, fun="sum")

# Inside Buffer pct
nyc_total_wgs<-sum(exact_extract(nyc_spatraster_2263_bilinear, nyc_polygon, fun="sum"))
inside_buffer_wgs<-exact_extract(nyc_spatraster_2263_bilinear, subway_500_buffers_dissolved, fun="sum")
outside_buffer_wgs<-nyc_total_wgs-inside_buffer_wgs
outside_buffer_wgs_pct<-((nyc_total_wgs-inside_buffer_wgs)/nyc_total_wgs)*100

# Read in and Prepare 2009 Population Raster ------------------------------

# read in original 2009 raster
usa_2009_original<-raster("/Users/adra7980/Documents/gis_class_scratch/scratchdata/usa_ppp_2009.tif")
usa_2009_original

# crop the 2009 raster to NYC's extent
usa_2009_nyc_crop<-crop(usa_2009_original, nyc_spatial_df)

# Mask "usa_2009_nyc_crop" to "nyc_spatial_df" borders
nyc_2009_masked<-mask(usa_2009_nyc_crop, nyc_spatial_df)

# Visualize "nyc_2009_masked"
tm_shape(nyc_2009_masked)+
  tm_raster()

# Turn "nyc_2009_masked" into SpatRaster for export
nyc_2009_spatraster<-rast(nyc_2009_masked)

# Exporting Rasters -------------------------------------------------------

# Export masked NYC (2019) WGS84 raster
writeRaster(nyc_spatraster, "nyc_2019_pop.tif")

# Export "nyc_2009_spatraster" (i.e.  NYC 2009 WGS Raster)
writeRaster(nyc_2009_spatraster, "nyc_2009_pop.tif")


