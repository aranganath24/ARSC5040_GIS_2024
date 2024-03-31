---
layout: page
title: General Resources
nav_order: 6
---

# General Resources 
{:.no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## GIS and Data Management

When pursuing GIS work (or any empirical project!), it is important to develop a data management strategy, which can help you save time, and ensure that your work is reproducible. An excellent primer on GIS data management, by Koshoffer, Figueiredo, and Latessa (2020) is available at this [link](https://scholar.uc.edu/concern/media/8623j016z), which contains an MP3 of their presentation and the associated presentation slide deck. You can also find the YouTube recording of their presentation [here](https://www.youtube.com/watch?v=odc4TQqjz88). 

Another useful resource is this [guide](https://libraryguides.mcgill.ca/c.php?g=718144&p=5201118), compiled by Alisa Rod. Some of the resources presented in this guide are platform-specific (i.e. are more relevant to certain types of GIS software, such as ESRI products, rather than others), but many are more general. 

## Geospatial Data Analysis Software: A Brief Overview

Our course carries out most of its GIS analysis and visualization using open-source packages written for R, but there are a variety of other GIS software packages you may wish to explore. 

### Esri Products 

Esri (founded as the Environment Systems Research Institute), is the leading developer of proprietary GIS software. Its flagship product is [ArcGIS Pro](https://www.esri.com/en-us/arcgis/products/arcgis-pro/overview), which is a desktop GIS application that allows users to carry out a wide range of spatial analysis and visualization tasks. ArcGIS Pro offers a menu-based interface, but also offers users the opportunity to execute tasks by writing Python scripts. It also offers integration with R via the "R-ArcGIS Bridge", which you can learn more about [here](https://www.esri.com/en-us/arcgis/products/r-arcgis-bridge/get-started). 

Other Esri products include [ArcGIS Online](https://www.arcgis.com/index.html) (a web-based GIS application), and [StoryMaps](https://storymaps.arcgis.com/) (an interactive multimedia platform that allows users to create attractive presentations that incorporate GIS visualizations). ArcGIS Online is worth exploring, but its analytic capabilities are somewhat limited; it can be useful if you want to make (and share) a quick map or visualization, but is not really the place for a more in-depth geospatial analysis. ArcGIS Online also integrates well with StoryMaps. StoryMaps is especially worth exploring if you are a qualitative social scientists who would like to present your research in narrative form. ArcGIS Online and StoryMaps are also good teaching tools, and easily accessible to undergraduates. 

While propietary, most colleges and universities license GIS, and make it available to campus affiliates for free at the point of service. For instructions on how to access Esri products through CU-Boulder's license, please see this [page](https://libguides.colorado.edu/gis/access), which also provides the contact information for CU-Boulder's geospatial librarian.

### Quantum GIS (QGIS)

QGIS is a prominent open-source desktop GIS application, and might be thought of as the open-source analogue to ArcGIS Pro. It is possible to carry out the full range of geospatial visualization and analysis techniques using QGIS's native functionality, or with QGIS [plugins](https://gisgeography.com/qgis-plugins/), which are programs written by the QGIS community that can be installed and used for more specialized tasks. For example, QGIS has a Google Earth Engine plugin (see [here](https://gee-community.github.io/qgis-earthengine-plugin/)) that allows users to interact with Earth Engine from the QGIS interface. QGIS also has a Python scripting window built into it, so you can work in QGIS programmatically as well as through its menu-based interface. 

For a quick introduction to the QGIS menu-based interface, see this [tutorial](https://aranganath24.github.io/gistools_qda/index.html), which walks through a basic mapping exercise. The tutorial includes a basic cartography workflow in both QGIS and R Studio, which makes it easier to compare the two applications. 

You can download QGIS at this [link](https://qgis.org/en/site/forusers/download.html).

### Geopandas (Python)

The past few years have seen the development of powerful geospatial analysis and visualization packages for the Python programming language. The flagship package in this ecosystem is [Geopandas](https://geopandas.org/en/stable/). This brief [primer](https://chrieke.medium.com/essential-geospatial-python-libraries-5d82fcc38731), by Christoph Rieke, provides a concise overview of the Python package ecosystem for geospatial data.

## Which GIS application to use? 

Our course primarily uses R, since it is a programming language that is widely used in the social sciences. If you decide to use GIS extensively in your future work, your choice of which application to use might be informed by your future goals. If you are planning on an academic research career, or a career as a data or research scientist in the private sector, it makes sense to use R or Python, since those languages are widely used in those professional settings. There are a handful of GIS tasks (such as digitizing and georeferencing print maps) that are still difficult to implement in R/Python, so it may be worthwhile to familiarize yourself with QGIS as well, since these tasks tend to be more straightforward in a dedicated GIS application. 

If you plan to pursue work in government, policy, or non-data science private sector positions, Esri products remain the industry standard, and you'll want to familarize yourself with ArcGIS Pro, as well as ArcGIS Online (which is often used to communicate information to the public). 

CRDDS offers a variety GIS workshops (primarily taught by the Library's geospatial librarian) that use all of the software packages mentioned above. If you'd like to explore GIS software packages that are not covered in this course, those workshops would be a good place to start. 

## GIS Data Sources

### R packages for GIS data extraction
\
***rspatialdata*** 

There are a number of very useful R packages that allow users to directly read in or download geospatial data into R studio from within the R studio environment itself. A good place to start is the [rspatialdata](https://rspatialdata.github.io/index.html) project, led by Paula Moraga. The project website provides a guide to various packages that can be used to extract widely used GIS data. There, you can find accessible tutorials on extracting [administrative boundary data](https://rspatialdata.github.io/admin_boundaries.html), [crowd-sourced data](https://rspatialdata.github.io/osm.html) from [Open Street Map](https://www.openstreetmap.org/#map=4/38.01/-95.84) through the ```osmdata``` package, granular [population data](https://rspatialdata.github.io/index.html), [elevation data](https://rspatialdata.github.io/elevation.html), [temperature data](https://rspatialdata.github.io/temperature.html), [rainfall data](https://rspatialdata.github.io/rainfall.html), [humidity data](https://rspatialdata.github.io/humidity.html), [vegetation data](https://rspatialdata.github.io/vegetation.html), [land cover data](https://rspatialdata.github.io/land_cover.html), [demographic and health survey data](https://rspatialdata.github.io/dhs-data.html), [malaria data](https://rspatialdata.github.io/malaria.html), [air pollution data](https://rspatialdata.github.io/air_pollution.html), and [species occurrence data](https://rspatialdata.github.io/species_occurrence.html). 

***Demographic data and census packages***

For demographic data in the United States, Kyle Walker's [tidycensus](https://walker-data.com/tidycensus/) packages is the best place to start (if you are interested in relatively recent data, from the past 20 years or so). It provides easy-to-use functions that allow users to pull data into R via the Census Bureau API. These functions have the ability to return census datasets (at various census geographies) as sf objects that play nicely with the tidyverse, which makes it easy to use for spatial visualization and analysis. Please note that in order to use *tidycensus*, you must register for a Census API key, which is a very simple and quick process; you can register [here](https://api.census.gov/data/key_signup.html). For guidance on the use of *tidycensus*, the best resource is a book authored by Walker, entitled [Analyzing US Census Data: Methods, Maps, and Models in R](https://walker-data.com/census-r/working-with-census-data-outside-the-united-states.html). See, in particular, [Chapter 2](https://walker-data.com/census-r/an-introduction-to-tidycensus.html) for a primer on data extraction using *tidycensus*; Chapter [5](https://walker-data.com/census-r/census-geographic-data-and-applications-in-r.html), [6](https://walker-data.com/census-r/mapping-census-data-with-r.html), and [7](https://walker-data.com/census-r/spatial-analysis-with-us-census-data.html) provide an account of how to use the extracted data in a GIS framework. 

There are several packages that enable the extraction of demographic data for countries outside the United States. The [idbr](https://github.com/walkerke/idbr) package, also authored by Walker, is an R package that allows users to extract basic demographic data from a number of foreign countries into R, using the Census Bureau's International Database . Please see Chapter 12 of Walker's Census book, on [Working with Census Data Outside the United States](https://github.com/walkerke/idbr) for an overview. In addition, there are several country-specific R packages that allow users to extract demographic/census from countries of interest; the data available through these country-specific packages is often more detailed and comprehensive than what is available through *idbr*. For example, there is: 

* [cancensus](https://cran.r-project.org/web/packages/cancensus/vignettes/cancensus.html) for Canadian census data
* [rKenyaCensus](https://shelkariuki.netlify.app/post/rkenyacensus/) for Kenyan census data
* [mxmaps](https://www.diegovalle.net/mxmaps/) and [inegiR](https://cran.r-project.org/web/packages/inegiR/inegiR.pdf) for Mexican census data
* [nomisr](https://cran.r-project.org/web/packages/nomisr/vignettes/introduction.html) for UK census data (and various other demographic datasets, such as the labor force survey)
* [insee](https://cran.r-project.org/web/packages/insee/vignettes/insee.html) for census and demographic data from France

Walker provides examples using some of these packages in Chapter 12 of his book. 

In addition, there are useful packages that allow users to extract data at regional scales, and join this data to geospatial datasets for analysis and visualization. For example, the [eurostat](https://cran.r-project.org/web/packages/eurostat/eurostat.pdf) package allows users to extract Eurostat data. 

Finally, there are R packages that can help extract and work with [IPUMS](https://www.ipums.org), a project at the University of Minneosta that provides a rich repository of census micro-data from around the world, which can be linked to spatial datasets using methods discussed in this course. The especially valuable feature of IPUMS is its catalog of historical data, which can facilitate spatio-temporal analyses at fine geographic scales. The [ipumsr](https://cran.r-project.org/web/packages/ipumsr/vignettes/ipums.html) package is an R package that allows users to extract IPUMS data. For a primer on using IPUMS data in a spatial context, see this useful [tutorial](https://cran.r-project.org/web/packages/ipumsr/vignettes/ipums-geography.html). This Github [repository](https://github.com/mnpopcenter/ipumsr) also provides useful resources at the intersection of GIS, IPUMS data, and R. 

***Miscellaneous R Packages for Extracting GIS Data***

* The [FedData](https://docs.ropensci.org/FedData/) package facilitates easy access to a number of raster datasets (i.e. elevation, cropland, landcover, hydrography etc.) compiled by a variety of federal agencies. 
* The [rnaturalearth](https://cran.r-project.org/web/packages/rnaturalearth/README.html) package provides an easy way to download country and region-level boundary data, as well as data on natural features like lakes and rivers.
* The [rnoaa](https://docs.ropensci.org/rnoaa/) package allows users to extract data from a variety of datasets maintained by NOAA into R. 
* The [stats19](https://docs.ropensci.org/stats19/) package allows for the extraction and analysis of road crash data from the UK. The package allows for the analysis of the spatial distribution of traffic accident data. 
* The [rWBclimate](https://docs.ropensci.org/rWBclimate/) package offers functions to extract climate data from several World Bank climate datasets.
* The [patentsview](https://docs.ropensci.org/patentsview/index.html) package facilitates the extraction of patent data within R via the PatentsView API. Location data relevant to patents is available. 
* The [pdfetch](https://cran.r-project.org/web/packages/pdfetch/pdfetch.pdf) package is not a GIS data extraction package per se, but allows users to extract economic and financial data from a variety of sources (FRED at the St.Louis Fed, Yahoo Finance, the Bureau of Labor Statistics, various central banks around the world etc.) which users can then join to spatial datasets for spatial visualization and analysis purposes. 
* The [crimedata](https://cran.r-project.org/web/packages/crimedata/vignettes/introduction.html) package facilitates the extraction of crime data (including data in sf format) from the [Crime Open Database](https://osf.io/zyaqn/). 
* The [lingtypology](https://ropensci.github.io/lingtypology/) package facilitates access to linguistics data, with a focus on mapping applications. The [glottospace](https://github.com/SietzeN/glottospace) package is also a package that facilitates the extraction of linguistics data, and the geospatial analysis of this data; it is broader in scope than *lingtypology*. 
* [ICPSR](https://www.icpsr.umich.edu/web/pages/) is (among other things), one of the largest and most prominent social science data archives around today. The [icpsrdata](https://cran.r-project.org/web/packages/icpsrdata/icpsrdata.pdf) package allows users to programmatically extract various ICPSR datasets within R. ICPSR is not solely a geospatial data archive, but it does have some GIS data, as well as a large collection of tabular datasets that can be joined to spatial datasets. 

### Subject-Specific GIS Data Sources

While extracting data using R packages is convenient (and facilitates reproducibility), there are of course many datasets that do not currently have packages built around them, but which are still very useful. In these cases, you'll have to download the data from the source, and then load it into R Studio (or your GIS application of choice). Here are some useful data sources: 

* ***International Development***: The [AIDDATA](https://www.aiddata.org/) project, based out of William and Mary, has archived many datasets related to foreign aid flows and projects. Many of these datasets contain spatial information. [worldpop](https://www.worldpop.org/) is a large archive of spatial datasets that focus on a variety of topics spanning "population distributions, demographics and dynamics", and economic development. It's especially useful as a repository of raster datasets that are relevant to social scientists. worldpop has an associated R package, available [here](https://github.com/wpgp/wopr), but it is still somewhat new; while the package is worth exploring, at this point, you're probably still better off exploring the website directly. Facebook's [Data for Good](https://dataforgood.facebook.com/dfg/tools) project is also a rich source of geospatial data on a variety of development-related topics (such as population, infrastructure etc.). 
* ***International Conflict***: The Peace Research Institute Oslo ([PRIO](https://www.prio.org/)) has archived several useful datasets related to international conflict. See this [page](https://www.prio.org/Data/) for a list of datasets. Examples of GIS datasets on the page include the [PRIO Grid](https://www.prio.org/Data/), and data on [oil and gas deposits](https://www.prio.org/data/11), [diamond deposits](https://www.prio.org/data/10), [gemstone deposits](https://www.prio.org/data/25), [coca bush, opium poppy, and cannabis cultivation](https://www.prio.org/data/24). On a related note, the [Uppsala Conflict Data Program](https://ucdp.uu.se/encyclopedia) offers additional geospatial datasets on international conflict and violence; see [here](https://ucdp.uu.se/downloads/) for a list.
* ***Economic activity and production***: For disaggregated data on economic production, William Nordhaus's [G-Econ](https://gecon.yale.edu/) project, which contains data on economic activity for "gross cell product", measured at 1-degree resolution across the world. Data is available for 1990, 1995, 2000, and 2005. For night-lights data (often used as a proxy for economic activity), see this [page](https://eogdata.mines.edu/products/vnl/) from the [Earth Observation Group](https://payneinstitute.mines.edu/eog/) at the Colorado School of Mines.  
* ***Infrastructure***: See [GloBio](https://www.globio.info/download-grip-dataset) for roads data, and see this [page](https://msi.nga.mil/Publications/WPI) from the National Geospatial Intelligence Agency for data on ports. It's also worth noting that some of the best sources of infrastructure data are local municipalities. For a guide to US city data, see [here](http://us-cities.survey.okfn.org/). For data specific to Boulder, CO, please see this [Geospatial Open Data](https://opendata-bouldercounty.hub.arcgis.com/) from Boulder County. 
* ***Agriculture and Environment***: We've already mentioned several environment-related datasets, as well as IPUMS, but it's worth highlighting [IPUMS Terra](https://terra.ipums.org/) if you're interested in integrating social and environmental data in a GIS framework. The [Center for Sustainability and the Global Environment](https://sage.nelson.wisc.edu/) at the University of Wisconsin-Madison, and [CIESIN](http://ciesin.columbia.edu/) at Columbia are rich sources of information and data.
* ***Legislative Boundaries***: For those of you interested in political institutions and outcomes, the [Constituency-Level Elections Archive (CLEA)](https://electiondataarchive.org/) is worth checking out. In particular, they have georeferenced and published (as vector data files) electoral constituency boundaries for several countries around the world. See [here](https://electiondataarchive.org/data-and-documentation/georeferenced-electoral-districts-datasets/) for this district-level GIS data.

### Curated GIS repositories and data sources compiled by GIS experts

* The [Geoblacklight](https://geoblacklight.org/) project
* A very helpful compilation of GIS data sources published by Professor Gordon McCord at UC San Diego is available [here](https://sites.google.com/site/gordoncmccord/gis?authuser=0](https://sites.google.com/site/gordoncmccord/gis?authuser=0)
* A searchable repository of GIS data from [ArcGIS Hub](https://hub.arcgis.com/search)
* Collections of GIS data sources compiled by librarians at [Penn](https://guides.library.upenn.edu/globalgis) and [Berkeley](https://guides.lib.berkeley.edu/gis/international)
* Some useful [resources](https://libguides.colorado.edu/geospatialdata) from the GIS Librarian at CU Boulder. 

### Google Earth Engine Data and Resources

* The Google Earth Engine catalog is available [here](https://developers.google.com/earth-engine/datasets) 
* A curated list of [awesome earth engine]([https://github.com/giswqs/Awesome-GEE) resources. 
* A [community archive](https://github.com/samapriya/awesome-gee-community-datasets) of earth engine datasets

## Useful tools and packages 

* [https://ropensci.org/packages/geospatial/](https://ropensci.org/packages/geospatial/)
* [https://github.com/sacridini/Awesome-Geospatial](https://github.com/sacridini/Awesome-Geospatial) 







