---
layout: page
title: Class Two
nav_order: 2
---

# Class Two: Vector data and geoprocessing
{:.no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Overview

In this session, we will cover vector data (which we were introduced to in the previous session when working with a spatial dataset of country boundaries) more explicitly, and explore the different ways it can be manipulated and analyzed, and the different ways it can be used to inform our understanding of social phenomena. We will also explore some of the practical considerations to keep in mind when working with map coordinate systems. The in-class exercise will give you some practice in carrying out basic vector data operations in R Studio. 

## Readings
\
*Required Readings*

* Smith, Heather. 2020. "Geographic vs Projected Coordinate Systems." *Esri ArcGIS Blog.* https://www.esri.com/arcgis-blog/products/arcgis-pro/mapping/gcs_vs_pcs/. 
* "7 Geoprocessing Tools Every GIS Analyst Should Know". 2022. *GISGeography.* [https://gisgeography.com/geoprocessing-tools/](https://gisgeography.com/geoprocessing-tools/) 
* "How Spatial Join Works in GIS". 2022. *GISGeography.* [https://gisgeography.com/spatial-join/](https://gisgeography.com/spatial-join/)
* "What is Geocoding?". *ArcGIS Dekstop Documentation.* [https://desktop.arcgis.com/en/arcmap/latest/manage-data/geocoding/what-is-geocoding.htm](https://desktop.arcgis.com/en/arcmap/latest/manage-data/geocoding/what-is-geocoding.htm) 

*Read* **ONE** *of the following*. *Please pay careful attention to the section in which the geospatial methods are discussed, and consider the following questions: What methods were used? How might you deploy these methods in your own research? Was there anything confusing about the methods section? Would you want to ask the author for clarification on anything? How could these research questions be extended in new directions?* 

* Pengl, Yannick, Philip Roessler, and Valeria Rueda. 2021. “Cash Crops, Print Technologies, and the Politicization of Ethnicity in Africa.” *American Political Science Review* 116(1): 181-199.\
doi: [https://doi.org/10.1017/S0003055421000782](https://doi.org/10.1017/S0003055421000782)

* Deenesh, Sohoni and Salvatore Saporito. 2009. “Mapping School Segregation: Using GIS to Explore Racial Segregation between Schools and Their Corresponding Attendance Areas.” *American Journal of Education* 115(4): 569-600.\
doi: [https://doi-org.colorado.idm.oclc.org/10.1086/599782](https://doi-org.colorado.idm.oclc.org/10.1086/599782).

* Kotsadam, Andrea, Gudrun Ostby, Siri Aas Rustad, Andreas Foro Tollefsen, and Henrik Urdal. 2018. “Development Aid and Infant Mortality. Micro-level evidence from Nigeria.” *World Development*: 59-69.\
doi: [https://doi.org/10.1016/j.worlddev.2017.12.022](https://doi.org/10.1016/j.worlddev.2017.12.022). 

* Braun, Robert. 2016. “Religious Minorities and Resistance to Genocide: The Collective Rescue of Jews in the Netherlands during the Holocaust.” *American Political Science Review* 110(1): 127-147.\
doi: [https://doi.org/10.1017/S0003055415000544](https://doi.org/10.1017/S0003055415000544). 

* Maranville, Angela R., Tih-Fen Ting, Yang Zhang. 2009. “An Environmental Justice Analysis: Superfund Sites and Surrounding Communities in Illinois.” *Environmental Justice* 2(2): 49-56.\
doi: [https://doi.org/10.1089/env.2008.0547](https://doi.org/10.1089/env.2008.0547).

* Jha, Saumitra. 2013. "Trade, Institutions, and Ethnic Tolerance: Evidence from South Asia". *American Political Science Review* 107(4): 806-832.\
doi: [https://doi.org/10.1017/S0003055413000464](https://doi.org/10.1017/S0003055413000464)

## Class Notes/Tutorial

* [Class 2 Tutorial](class_notes/class2/class2_tutorial.html)

## Useful resources

* [Video on coordinate reference systems](https://www.youtube.com/watch?v=xJyJlKbZFlc&t=606s) by Jonathan Soma
* [Guide to geocoding tools](https://guides.lib.berkeley.edu/gis/geocoding), from UC-Berkeley; note that some of these resources may not be available at CU-Boulder, but many of them are available to the public. 
* [sf package cheatsheet](https://github.com/rstudio/cheatsheets/blob/main/sf.pdf)
* [R coordinate systems cheatsheet](https://www.nceas.ucsb.edu/sites/default/files/2020-04/OverviewCoordinateReferenceSystems.pdf)
* [Scale and Projections](https://open.lib.umn.edu/mapping/chapter/3-scale-and-projections/) by Laura Matson and Melinda Kernik

## Assignment

Please choose **one** of the options below and turn it in before the start of Class 3 (April 18th). 

*Option 1*

Explore some of the vector datasets discussed in the [General Resources](/resources.md) section of the course webpage. Find a polygon dataset, and a point dataset (or a tabular dataset that is geocoded), and implement a spatial join to derive a new dataset that contains information on the number of points within each polygon. What research questions might the dataset you generated help to answer? 

*Option 2* 

Go to this [archive](https://openpolicing.stanford.edu/data/) of police stop data, provided as part of the [Stanford Open Policing Project](https://openpolicing.stanford.edu/). Under the "CO" heading on this [page](https://openpolicing.stanford.edu/data/), download the "Aurora"" data as a CSV file. Read this file (which contains lat/long coordinates for most of the stops in the dataset; assume that the coordinate reference system for these lat/long coordinates are EPSG: 4326) into R Studio, and generate a new dataset that contains information on the total number of police stops which took place in each census tract. 

Document your steps/code, and send me the final dataset (i.e. the tract-level dataset on the number of stops) that you generated as a CSV file. 






