fahrenheit_to_celsius_converter_dataset<-function(fahrenheit_input){
  celsius_output<-(fahrenheit_input-32)*(5/9)
  final_dataset<-cbind(fahrenheit_input, celsius_output)
  final_dataset_df<-as.data.frame(final_dataset)
  return(final_dataset_df)
}

f_vector<-c(44, 77, 89)
map(f_vector, fahrenheit_to_celsius_converter_dataset)
map_dfr(f_vector, fahrenheit_to_celsius_converter_dataset)


# Buffer analysis

setwd("/Users/adra7980/Documents/git_repositories/ARSC5040_GIS/class_notes/class4/scripting_data")

# Read in NYC 2019 Raster
nyc_pop_2019<-raster("nyc_2019_pop.tif")

# Read in NYC subway stop data
nyc_subway_stops<-st_read("stops_nyc_subway_may2019.shp")

# Read in NYC borough data
nyc_boroughs<-st_read("nyu_2451_34490.shp")

# Create 500m subway buffers
nyc_subway_500m_buffer<-st_buffer(nyc_subway_stops, 1640.42)

# Dissolve buffers
nyc_subway_500m_buffer_dissolved<-nyc_subway_500m_buffer %>% 
  group_by() %>% 
  summarise()

# Transform CRS of "nyc_subway_500m_buffer_dissolved" to match "nyc_pop_2019"
nyc_subway_500m_buffer_dissolved_4326<-nyc_subway_500m_buffer_dissolved %>% 
  st_transform(4326)

# Calculate population in buffer zone ("nyc_subway_500m_buffer_dissolved_4326") based on "nyc_2019_population" raster
nyc_pop_within_buffer<-exact_extract(nyc_pop_2019, nyc_subway_500m_buffer_dissolved_4326, fun="sum")

# Extract total NYC population
nyc_borough_4326<-nyc_boroughs %>% st_transform(4326)
nyc_pop<-sum(exact_extract(nyc_pop_2019, nyc_borough_4326, fun="sum" ))

# Percentage Inside Buffer
pct_inside<-(nyc_pop_within_buffer/nyc_pop)*100

# Calculate Percentage Outside Buffer
pct_outside_buffer<-100-pct_inside

# Print "pct_outside_buffer"
pct_outside_buffer


nyc_population_buffer<-function(buffer_distance_meters){
  buffer_distance_feet<-buffer_distance_meters*3.281
  nyc_subway_buffer<-st_buffer(nyc_subway_stops, buffer_distance_feet)
  
  nyc_subway_buffer_dissolved<-nyc_subway_buffer %>% 
                                group_by() %>% 
                                summarise()
  
  nyc_buffer_dissolved_4326<-nyc_subway_buffer_dissolved %>% 
                                st_transform(4326)
  
  
  nyc_pop_within_buffer<-exact_extract(nyc_pop_2019, nyc_buffer_dissolved_4326, fun="sum")
  
  nyc_inside_buffer_pct<-(nyc_pop_within_buffer/8309940)*100
  
  pct_outside_buffer<-100-nyc_inside_buffer_pct
  
  final_df<-as.data.frame((cbind(buffer_distance_meters, pct_outside_buffer )))
  
  return(final_df)
}
  
nyc_population_buffer(500)
nyc_population_buffer(650)
nyc_population_buffer(1000)

buffer_distances<-c(250, 500, 750, 1000, 1250, 1500, 1750, 2000)

map_dfr(buffer_distances, nyc_population_buffer)
  
distance_table<-map_dfr(buffer_distances, nyc_population_buffer)

  

