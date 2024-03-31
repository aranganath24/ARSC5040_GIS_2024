library(osmdata)
library(sf)
library(tmap)

# examine available features
features_osm<-available_features()
features_osm

# extract tags from a given feature
available_tags("amenity")

# Extract Denver cafes

Denver_cafes<- getbb(place_name = "Denver", display_name_contains = "Colorado") %>%
                  opq() %>%
                  add_osm_feature("amenity", "cafe")


# Convert to sf object
Denver_cafes_sf<-osmdata_sf(Denver_cafes)

# Extract points
Denver_cafes_sf_points<-Denver_cafes_sf %>% pluck("osm_points")

tm_shape(Denver_cafes_sf_points)+
  tm_dots()

https://dominicroye.github.io/en/2018/accessing-openstreetmap-data-with-r/
  
  
  

