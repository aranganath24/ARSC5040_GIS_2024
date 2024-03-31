download.file(url="https://electiondataarchive.org/wp-content/uploads/GRED_20190215/GRED_20190215_Australia.zip",
              destfile="australia.zip")

unzip(zipfile = "australia.zip")

australia_boundaries<-st_read(dsn="GRED_20190215_Australia/2010/GRED_20190215_Australia_2010.shp")


shapefile_read<-function(shapefile_url, shapefile_dest, shapefile_path, shapefile_name){
  download.file(url=shapefile_url, destfile=shapefile_dest)
  unzip(zipfile=shapefile_dest)
  shapefile<-st_read(dsn=shapefile_path)
  assign(shapefile_name, shapefile, envir=.GlobalEnv)
}

shapefile_read("https://electiondataarchive.org/wp-content/uploads/GRED_20190215/GRED_20190215_Australia.zip",
               "australia.zip", "GRED_20190215_Australia/2010/GRED_20190215_Australia_2010.shp", "australia")



inputs<-list(shapefile_url=c("https://electiondataarchive.org/wp-content/uploads/GRED_20190215/GRED_20190215_Albania.zip",
                             "https://electiondataarchive.org/wp-content/uploads/GRED_20190215/GRED_20190215_Argentina.zip"),
             shapefile_dest=c("albania.zip", "argentina.zip"),
             shapefile_path=c("GRED_20190215_Albania/2009/GRED_20190215_Albania_2009.shp",
                              "GRED_20190215_Argentina/2003/GRED_20190215_Argentina_2003.shp"),
             shapefile_name=c("albania", "argentina")
             )


pwalk(inputs, shapefile_read)
shapefile_list<-pmap(inputs, shapefile_read)

# raster import

download.file(url="https://wopr.worldpop.org/download/237",
              destfile="mozambique.tif")

mozambique<-raster("mozambique.tif")




https://hub.arcgis.com/search
