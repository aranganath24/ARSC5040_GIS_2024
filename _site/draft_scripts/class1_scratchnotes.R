test_summary<-trade_gdp_2010_2018 %>% 
                group_by(iso3c) %>% 
                mutate(trade_2010_2018_average=mean(NE.TRD.GNFS.ZS)) %>% 
                ungroup()


test_summary_two<-trade_gdp_2010_2018 %>% 
                    group_by(iso3c) %>% 
                    summarize(trade_2010_2018_mean=mean(NE.TRD.GNFS.ZS))



# Mapping the average

mean_trade<-trade_gdp_2010_2018 %>% 
              group_by(iso3c) %>% 
              summarize(trade_2010_2018_mean=mean(NE.TRD.GNFS.ZS, na.rm=T))


mean_trade_spatial<-full_join(country_boundaries, mean_trade,
                                by=c("iso_a3"="iso3c"))

mean_trade_spatial<-mean_trade_spatial %>% relocate(name_long)

tm_shape(mean_trade_spatial)+
  tm_polygons(col="trade_2010_2018_mean")












