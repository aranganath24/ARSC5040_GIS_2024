library(tmap)
library(rnaturalearth)
library(rnaturalearthdata)
library(sf)
library(sp)
sf_use_s2(use_s2 = F)

country_boundaries<-ne_countries(scale="medium", returnclass="sf")

tm_shape(country_boundaries)+
  tm_polygons()