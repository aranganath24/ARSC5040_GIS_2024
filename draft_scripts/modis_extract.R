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
filepath<-"VegetationData/colorado.shp"

MODIStsp(
  gui = FALSE,
  out_folder = "VegetationData",
  out_folder_mod = "VegetationData",
  selprod = "Vegetation_Indexes_16Days_1Km (M*D13A2)",
  bandsel = "NDVI",
  user = "aranganath24_gis",
  password = "EarthdataCUB2022",
  start_date = "2020.07.03",
  end_date = "2020.07.03",
  output_proj = 4326,
  verbose = FALSE,
  spatmeth = "file",
  spafile = "VegetationData/colorado.shp",
  out_format = "GTiff"
)



"/Users/adra7980/Documents/git_repositories/ARSC5040_GIS/general_resources"



