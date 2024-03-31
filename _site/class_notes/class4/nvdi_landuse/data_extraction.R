co_polygon<-get_decennial(geography = "state",
                          variables = "P001001",
                          year = 2010,
                          geometry=TRUE) %>% 
  filter(NAME=="Colorado") %>% 
  st_transform(4326)


setwd("/Users/adra7980/Documents/git_repositories/ARSC5040_GIS/class_notes/class4/modis_data")
st_write(co_polygon, "land_cover/colorado.shp")


# Extract Land Use data
setwd("/Users/adra7980/Documents/git_repositories/ARSC5040_GIS/class_notes/class4/modis_data")
filepath<-"land_cover/colorado.shp"

MODIStsp(gui             = FALSE,
         out_folder      = "land_cover",
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



setwd("/Users/adra7980/Documents/git_repositories/ARSC5040_GIS/class_notes/class4/modis_data")
st_write(co_polygon, "vegetation/colorado.shp")

# Extract vegetation data
  setwd("/Users/adra7980/Documents/git_repositories/ARSC5040_GIS/class_notes/class4/modis_data")
filepath<-"vegetation/colorado.shp"


MODIStsp(
  gui = FALSE,
  out_folder = "vegetation",
  selprod = "Vegetation_Indexes_16Days_1Km (M*D13A2)",
  bandsel = "NDVI",
  user = "aranganath24_gis",
  password = "EarthdataCUB2022",
  start_date = "2020.07.03",
  end_date = "2020.07.03",
  output_proj = 4326,
  verbose = FALSE,
  spatmeth = "file",
  spafile = "vegetation/colorado.shp",
  out_format = "GTiff"
)


