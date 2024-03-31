install.packages("MODIStsp")
library(MODIStsp)
Codebook: https://lpdaac.usgs.gov/documents/101/MCD12_User_Guide_V6.pdf 

MODIStsp_get_prodlayers("MCD12Q1")

# Extract CO polygon
co__polygon<-get_decennial(geography = "state",
                               variables = "P001001",
                               year = 2010,
                               geometry=TRUE) %>% 
  filter(NAME=="Colorado") %>% 
  st_transform(4326)

setwd("/Users/adra7980/Documents/git_repositories/ARSC5040_GIS/general_resources")

# Define file path for downloaded CO boundary

filepath<-"land_cover/colorado.shp"

# Save downloaded CO shapefile
st_write(co__polygon, paste0(filepath))


MODIStsp(gui             = FALSE,
         out_folder      = "land_cover",
         out_folder_mod  = "land_cover",
         selprod         = "LandCover_Type_Yearly_500m (MCD12Q1)",
         bandsel         = "LC1", 
         user            = "aranganath24_gis" ,
         password        = "EarthdataCUB2022",
         start_date      = "2019.01.01", 
         end_date        = "2019.12.31", 
         output_proj = 4326,
         verbose         = FALSE,
         spatmeth        = "file",
         spafile         = filepath,
         out_format      = "GTiff")


setwd("~/Documents/git_repositories/ARSC5040_GIS/general_resources")
filepath<-"land_cover/colorado.shp"



MODIStsp(gui             = FALSE,
         out_folder      = "land_cover",
         out_folder_mod  = "land_cover",
         selprod         = "LandCover_Type_Yearly_500m (MCD12Q1)",
         bandsel         = "LC1", 
         user            = "aranganath24_gis" ,
         password        = "EarthdataCUB2022",
         start_date      = "2019.01.01", 
         end_date        = "2019.12.31", 
         verbose         = FALSE,
         spatmeth        = "file",
         spafile         = filepath,
         out_format      = "GTiff")


# Read in raster
CO_raster<-raster("/Users/adra7980/Documents/git_repositories/ARSC5040_GIS/general_resources/land_cover/colorado/LandCover_Type_Yearly_500m_v6/LC1/MCD12Q1_LC1_2019_001.tif")

# Project raster
CO_raster<-projectRaster(CO_raster, crs="+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs")

# Crop raster

CO_raster<-raster::mask(CO_raster, as_Spatial(co__polygon))

# test appearance
tm_shape(CO_raster)+
  tm_raster()+
tm_shape(co__polygon)+
  tm_polygons(alpha=0)




x+scale_fill_manual(values=colors, drop=F)








CO_raster_df <- as.data.frame(CO_raster, xy = TRUE, na.rm = TRUE) %>%
  mutate(MCD12Q1_LC1_2019_001 = as.factor(round(MCD12Q1_LC1_2019_001)))


levels(CO_raster_df$MCD12Q1_LC1_2019_001) <- c( "Evergreen needleleaf forests",
                                           "Evergreen broadleaf forests",
                                           "Deciduous needleleaf forests",
                                           "Deciduous broadleaf forests",
                                           "Mixed forests",
                                           "Closed shrublands",
                                           "Open shrublands",
                                           "Woody savannas",
                                           "Savannas",
                                           "Grasslands",
                                           "Permanent wetlands",
                                           "Croplands",
                                           "Urban and built-up lands",
                                           "Cropland/natural vegetation mosaics",
                                           "Snow and ice",
                                           "Barren",
                                           "Water bodies")




x<-ggplot() + 
  geom_raster(data = CO_raster_df,
              aes(x = x, y = y, fill = MCD12Q1_LC1_2019_001)) +
  geom_sf(data = co__polygon, inherit.aes = FALSE, fill = NA) +
  scale_fill_viridis(name = "Land Cover Type", discrete = TRUE) +
  labs(title = "Land Cover classification in Colorado",
       subtitle = "01-01-2019 - 31-12-2019",
       x = "Longitude",
       y = "Latitude") +
  theme_minimal()




colors<-c("lightpink1", "lightgrey", "magenta", "lightcyan",
          "yellow", "palegreen", "seashell", "plum",
          "skyblue", "salmon2", "khaki", "tomato", 
          "gray0", "springgreen", "purple", "orange",
          "mediumblue")

x+scale_fill_manual(values=colors, drop=F)







co_counties_polygon<-get_decennial(geography = "county",
                                   state="CO", 
                           variables = "P001001",
                           year = 2010,
                           geometry=TRUE) %>% 
                    st_transform(4326)





co_counties_map<-tm_shape(co_counties_polygon)+tm_polygons()


ggplot() + 
  geom_raster(data = CO_raster_df,
              aes(x = x, y = y, fill = MCD12Q1_LC1_2019_001)) +
  geom_sf(data = co__polygon, inherit.aes = FALSE, fill = NA) +
  geom_sf(data=co_counties_polygon, inherit.aes=F, fill=NA)+
  scale_fill_viridis(name = "Land Cover Type", discrete = TRUE) +
  labs(title = "Land Cover classification in Colorado",
       subtitle = "01-01-2019 - 31-12-2019",
       x = "Longitude",
       y = "Latitude") +
  theme_minimal()



raster_label<-c("Evergreen needleleaf forests",
                                           "Evergreen broadleaf forests",
                                           "Deciduous needleleaf forests",
                                           "Deciduous broadleaf forests",
                                           "Mixed forests",
                                           "Closed shrublands",
                                           "Open shrublands",
                                           "Woody savannas",
                                           "Savannas",
                                           "Grasslands",
                                           "Permanent wetlands",
                                           "Croplands",
                                           "Urban and built-up lands",
                                           "Cropland/natural vegetation mosaics",
                                           "Snow and ice",
                                           "Barren",
                                           "Water bodies")


tm_shape(CO_raster)+
  tm_raster(labels=raster_label, n=17, palette="Accent")


tm_shape(CO_raster)+
  tm_raster(labels=raster_label, n=17, palette="Accent")


co_raster_rounded<-round(CO_raster)

co_raster_factor<-as.factor(co_raster_rounded)
is.factor(co_raster_factor)


levels(co_raster_factor)<-raster_label

co_raster_rounded<-round(CO_raster)


tm_shape(co_raster_rounded)+
  tm_raster(breaks=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18),
            labels=raster_label, palette="Set1")


rainfall_raster<-rasterFromXYZ(CO_raster_df[, c("x", "y", "ANN")])

CO_raster_factor<-as.factor(CO_raster)
is.factor(CO_raster_factor)
rat<-levels(CO_raster_factor[[1]])

as.raster(CO_raster_df)



ggplot() + 
  geom_raster(data = CO_raster_df,
              aes(x = x, y = y, fill = MCD12Q1_LC1_2019_001)) +
  geom_sf(data=co_counties_polygon, inherit.aes=F, fill=NA)+
  scale_fill_viridis_d(name = "Land Cover Type", option="C", direction=-1 ) +
  labs(title = "Land Cover classification in Colorado",
       subtitle = "01-01-2019 - 31-12-2019",
       x = "Longitude",
       y = "Latitude") +
  theme_minimal()


x<-ggplot() + 
  geom_raster(data = CO_raster_df,
              aes(x = x, y = y, fill = MCD12Q1_LC1_2019_001)) +
  geom_sf(data=co_counties_polygon, inherit.aes=F, fill=NA)+
  labs(title = "Land Cover classification in Colorado",
       subtitle = "01-01-2019 - 31-12-2019",
       x = "Longitude",
       y = "Latitude") +
  theme_minimal()

https://stackoverflow.com/questions/59311283/create-map-plot-with-discrete-colors


colors<-c("lightpink1", "lightgrey", "magenta", "lightcyan",
          "yellow", "palegreen", "seashell", "plum",
          "skyblue", "salmon2", "khaki", "tomato", 
          "gray0", "springgreen", "purple", "orange",
          "mediumblue", "slategray")

x+scale_fill_manual(values=colors, drop=F)






##GGPLOT





CO_raster_df <- as.data.frame(CO_raster, xy = TRUE, na.rm = TRUE) %>%
  mutate(MCD12Q1_LC1_2019_001 = as.factor((MCD12Q1_LC1_2019_001)))

levels(CO_raster_df$MCD12Q1_LC1_2019_001)

CO_raster_df$MCD12Q1_LC1_2019_001<-factor(CO_raster_df$MCD12Q1_LC1_2019_001, levels=c("1", "2",
                              "3", "4", "5",
                              "6", "7", "8",
                              "9", "10", "11",
                              "12", "13", "14",
                              "15", "16", "17"))



x<-ggplot() + 
  geom_raster(data = CO_raster_df,
              aes(x = x, y = y, fill = MCD12Q1_LC1_2019_001)) +
  geom_sf(data=co_counties_polygon, inherit.aes=F, fill=NA)+
  labs(title = "Land Cover classification in Colorado",
       subtitle = "01-01-2019 - 31-12-2019",
       x = "Longitude",
       y = "Latitude") +
  theme_minimal()



colors<-c("lightpink1", "lightgrey", "magenta", "lightcyan",
          "yellow", "palegreen", "seashell", "plum",
          "skyblue", "salmon2", "khaki", "tomato", 
          "grey1", "springgreen", "purple", "orange",
          "mediumblue", "slategray")

x+scale_fill_manual(values=colors, drop=F)

levels(CO_raster_df$MCD12Q1_LC1_2019_001) <- c( "Evergreen needleleaf forests",
                                           "Evergreen broadleaf forests",
                                           "Deciduous needleleaf forests",
                                           "Deciduous broadleaf forests",
                                           "Mixed forests",
                                           "Closed shrublands",
                                           "Open shrublands",
                                           "Woody savannas",
                                           "Savannas",
                                           "Grasslands",
                                           "Permanent wetlands",
                                           "Croplands",
                                           "Urban and built-up lands",
                                           "Cropland/natural vegetation mosaics",
                                           "Snow and ice",
                                           "Barren",
                                           "Water bodies")






CO_ndvi<-raster("VegetationData/colorado/VI_16Days_1Km_v6/NDVI/MYD13A2_NDVI_2020_185.tif")

gain(CO_ndvi)<-0.0001

CO_ndvi_test<-CO_ndvi*0.0001
CO_ndvi_test_df<-as.data.frame(CO_ndvi_test)

gain(CO_ndvi)<-0.0001
CO_ndvi_gain<-as.data.frame(CO_ndvi)

tm_shape(CO_ndvi_test)+
  tm_raster()



