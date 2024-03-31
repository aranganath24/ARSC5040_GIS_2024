library(raster)

# Extract information about 2009 raster
GDALinfo("nyc_population_rasters/nyc_pop_2009.tif")


NYC_pop_2009<-raster("nyc_population_rasters/nyc_pop_2009.tif")
NYC_pop_2009

NYC_pop_2019<-raster("nyc_population_rasters/nyc_2019_pop.tif")

GDALinfo("nyc_population_rasters/nyc_2019_pop.tif")

summary(NYC_pop_2019, maxsamp=ncell(NYC_pop_2019))

tm_shape(NYC_pop_2019)+
  tm_raster()


nyc_2019_df<-as.data.frame((NYC_pop_2019))

tm_shape(NYC_pop_2019)+
  tm_raster(style="equal", n=20, palette="Oranges")


tm_shape(NYC_pop_2019)+
  tm_raster(style="equal", n=6, palette="Oranges")


my_colors<-c()

tm_shape(NYC_pop_2019)+
  tm_raster(style="equal", n=20, palette="Spectral")


my_colors<-c("grey1", "khaki1", "gold", "yellow2", "yellow")

tm_shape(NYC_pop_2019)+
  tm_raster(style="equal", n=5, palette=my_colors)


NYC_pop_2019_df<-as.data.frame(NYC_pop_2019, xy=TRUE)

ggplot()+
  geom_raster(data=NYC_pop_2019_df, aes(x=x, y=y, fill=nyc_2019_pop))+
  scale_fill_viridis_c() +
  coord_quickmap()






ggplot()+
  geom_raster(data=NYC_pop_2019_df, aes(x=x, y=y, fill=nyc_2019_pop))+
  scale_fill_distiller(palette="RdPu") +
  coord_quickmap()


ggplot()+
  geom_raster(data=NYC_pop_2019_df, aes(x=x, y=y, fill=nyc_2019_pop))+
  scale_fill_distiller(palette="YlOrBr") +
  coord_quickmap()




NYC_pop_2019_df_nas<-NYC_pop_2019_df %>% filter(is.na(nyc_2019_pop))

tm_shape(NYC_pop_2019)+
  tm_raster(style="equal", n=10, palette="YlOrBr", midpoint = T)



ggplot()+
  geom_raster(data=NYC_pop_2019_df_nas, aes(x=x, y=y, fill=nyc_2019_pop))+
  scale_fill_distiller(palette="YlOrBr") +
  coord_quickmap()



NYC_pop_2019[]


NYC_pop_2019_325<-NYC_pop_2019_df %>% 
                    mutate(NYC_325=ifelse(nyc_2019_pop<325, NA, nyc_2019_pop))



ggplot()+
  geom_raster(data=NYC_pop_2019_325, aes(x=x, y=y, fill=NYC_325))+
  scale_fill_distiller(palette="YlOrBr") +
  coord_quickmap()


ggplot()+
geom_raster(data=NYC_pop_2019_325, aes(x=x, y=y, fill=NYC_325))+
  scale_fill_distiller(palette="YlOrBr")+
geom_sf(data=nyc, fill="transparent")+
  coord_sf(crs=2263)

ggplot()+
  geom_raster(data=NYC_pop_2019_325, aes(x=x, y=y, fill=NYC_325))+
  scale_fill_distiller(palette="YlOrBr") +
  coord_quickmap()+
geom_sf(data=nyc, fill="transparent")+
theme(axis.text.x=element_blank(),
  axis.text.y=element_blank())


ggplot()+
  geom_sf(data=nyc, fill="transparent")+
  coord_sf(datum=st_crs(2263))+
  geom_raster(data=NYC_pop_2019_325, aes(x=x, y=y, fill=NYC_325))+
  scale_fill_distiller(palette="YlOrBr")


ggplot()+
  geom_raster(data=NYC_pop_2019_325, aes(x=x, y=y, fill=NYC_325))+
  scale_fill_distiller(palette="YlOrBr") +
  geom_sf(data=nyc, fill="transparent")+
  coord_sf(datum=st_crs(2263))
  


https://gis.stackexchange.com/questions/330659/r-raster-returns-values-as-na