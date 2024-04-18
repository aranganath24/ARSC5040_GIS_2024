---
layout: page
title: Class Three
nav_order: 3
---

# Class Three: Raster data and analysis; integrating vector and raster data
{:.no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Overview

In this session, we will consider the second major type of GIS data (which we have not yet worked with before): raster data. Raster data is essentially a georeferenced grid, rather than georeferenced points, lines, or polygons. We'll talk about the types of data that are represented with rasters, and the various social-scientific uses of raster datasets. The in-class exercise will give you some practice in visualizing raster data, and exploring how raster and vector datasets can be brought together to generate novel empricial measurements at micro-level spatial scales.  

## Readings
\
*Required Readings*

* "What is Raster Data?" Esri. [https://desktop.arcgis.com/en/arcmap/latest/manage-data/raster-and-images/what-is-raster-data.htm](https://desktop.arcgis.com/en/arcmap/latest/manage-data/raster-and-images/what-is-raster-data.htm) 

* Foley, Jonathan A., Ruth Defries, Gregory P. Asner, Carol Barford, Gordon Bonan, Stephen R. Carpenter, F. Stuart Chapin et al. 2005. “Global Consequences of Land Use. Science 309(5734): 570-574.\
doi: [https://doi.org/10.1126/science.1111772](https://doi.org/10.1126/science.1111772)

* [SKIM] Dell, Melissa, Benjamin F. Jones, and Benjamin A. Olken. 2014. "What Do We Learn from the Weather? The New Climate-Economy Literature." Journal of Economic Literature52 (3): 740-98.\
doi: [https://doi.org/10.1257/jel.52.3.740](https://doi.org/10.1257/jel.52.3.740)

*Read* **ONE** *of the following*:

* Clement, Matthew Thomas and Camila Alvarez. 2020. “The Inequality of Mundane Environmental Change: Assessing the impacts of Socioeconomic Status and Race on Neighborhood Land Development, 2001-2011". *Sociological Perspectives* 63(2): 292-311.\
doi: [https://doi.org/10.1177/0731121419857984](https://doi.org/10.1177/0731121419857984)

* Nunn, Nathan and Diego Puga. 2012. “Ruggedness: The Blessing of Bad Geography in Africa.” *Review of Economics and Statistics* 94(1): 20-36.\
doi: [https://doi.org/10.1162/REST_a_00161](https://doi.org/10.1162/REST_a_00161)

* Baragwanath, Kathryn and Ella Bayi. 2020. “Collective property rights reduce deforestation in the Brazilian Amazon.” *Proceedings of the National Academy of Sciences* 117(3): 20495-20502.\
doi: [https://doi.org/10.1073/pnas.1917874117](https://doi.org/10.1073/pnas.1917874117) 

* Shaver, Andrew, David B. Carter, and Tsering Wangyal Shawa. 2016. “Terrain ruggedness and land cover: Improved data for most research designs.” *Conflict Management and Peace Science* 36(2): 191-218.\
doi: [https://doi.org/10.1177/0738894216659843](https://doi.org/10.1177/0738894216659843)

* Dell, Melissa. 2010. "The Persistent Effects of Peru's Mining Mita". *Econometrica* 78(6): 1863-1903. 

## Class Notes/Tutorial

* [Class 3 tutorial](class_notes/class3/raster_analysis.html). 
* [Class 3 Slides](class_notes/class3/Class3Presentation.pdf)

## Useful resources

* [Documentation for the exactextractr package](https://cran.r-project.org/web/packages/exactextractr/readme/README.html), which implements zonal statistics.
* Documentation for the [*terra*](https://cran.r-project.org/web/packages/terra/index.html) package, which is becoming the "go-to" package for handling raster data in R. 
* A useful set of [tutorials on the *terra* package](https://rspatial.org/terra/#google_vignette), focusing on applied examples. 
* The raster data used in the tutorial is from the [WorldPop](https://www.worldpop.org/) project, which contains a lot of interesting raster datasets. In addition, the [rspatialdata](https://rspatialdata.github.io/index.html) project offers accessible tutorials on various R packages that streamline the process of extracting raster datasets. It includes coverage of packages that facilitate the extraction of land cover, elevation, temperature, rainfall, humidity, vegetation, and air pollution rasters. Please see the [General Resources](resources.md) page for more raster data sources. 

## Assignment

Choose **ONE** of the following options, and submit the assignment before the start of Class 4 (April 25). Please make sure to document your steps (i.e. comment your code), and provide any relevant maps or datasets you create. 

*Option 1*

Take the dataset of World Bank projects we worked with last week, and implement a spatial join to compute the number of projects within different polygons of a vector dataset. Then, identify a raster dataset of interest, and use zonal statistics to compute raster summary statistics with respect to the polygons in your dataset. What questions might the dataset you've created (containing project information, and information computed from your raster) help you to answer? 

*Option 2* 

Find a raster dataset you're interested in and explore it. Use it to create a histogram of cell values, generate a map using the raster, and compute a zonal statistic of interest with respect to a vector dataset of interest. 

*Option 3* 

Did the percentage of NYC's population living within 750 metres of a subway stop increase or decrease between 2009 and 2019? (assume no subway stations were added during this time period) 

*Option 4*

Use a raster dataset to explore a question you are interested in. 







