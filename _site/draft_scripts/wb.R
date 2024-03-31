library(WDI)
library(sf)
library(rnaturalearth)
library(rnaturalearthdata)

tmap_mode("plot")

country_boundaries<-ne_countries(scale="medium", returnclass="sf")

tm_shape(country_boundaries)+
  tm_polygons()


WDI_variables<-WDIsearch()
View(WDI_variables)

primary_education<-"UIS.XGDP.1.FSGOV"

primary_eduction_2010_2018<-WDI(country="all",
                                indicator=primary_education,
                                start=2010,
                                end=2018,
                                extra=T)

primary_education_2015<-primary_eduction_2010_2018 %>% 
                          filter(year=="2015")

View(primary_education_2015)

View(primary_education_2015 %>% drop_na())


fdi_inflows<-"BX.KLT.DINV.WD.GD.ZS"


fdi_inflows_2010_2018<-WDI(country="all",
                                indicator=fdi_inflows,
                                start=2010,
                                end=2015,
                                extra=T)

fdi_inflows_2015<-fdi_inflows_2010_2018 %>% 
                    filter(year=="2015")


fdi_inflows_2015_spatial<-full_join(country_boundaries, fdi_inflows_2015,
                                    by=c("iso_a3"="iso3c"))



x<-fdi_inflows_2015_spatial %>% relocate(iso_a3, country, name)

View(x)

tm_shape(fdi_inflows_2015_spatial)+
  tm_polygons(col="BX.KLT.DINV.WD.GD.ZS", palette="Greens", style="jenks",
              n=18, midpoint=F)


tm_shape(fdi_inflows_2015_spatial)+
  tm_polygons(col="BX.KLT.DINV.WD.GD.ZS", palette="Greens",
              n=8, style="equal")


# iso_a3=iso3c









