install.packages("osmdata")
library(osmdata)
x<-available_features()

available_tags("amenity")

q <- getbb("Madrid") %>%
  opq() %>%
  add_osm_feature("amenity", "cinema")

str(q)

cinema<-osmdata_sf(q)

cinema_sf<-cinema %>% pluck("osm_points")

library(tmap)

tm_shape(cinema_sf)+
  tm_dots()

tmap_mode("view")



q <- getbb(place_name = "Boulder", display_name_contains = "Colorado") %>%
  opq() %>%
  add_osm_feature("amenity", "cinema")

boulder_cinema<-osmdata_sf(q)

boulder_cinema_sf<-boulder_cinema %>% pluck("osm_points")

tmap_mode("view")

tm_shape(boulder_cinema_sf)+
  tm_dots()



q <- getbb(place_name = "Denver", display_name_contains = "Colorado") %>%
  opq() %>%
  add_osm_feature("amenity", "cafe")

boulder_recycling<-osmdata_sf(q)

boulder_recycling_sf<-boulder_recycling %>% pluck("osm_points")

tm_shape(boulder_recycling_sf)+
  tm_dots()

https://dominicroye.github.io/en/2018/accessing-openstreetmap-data-with-r/