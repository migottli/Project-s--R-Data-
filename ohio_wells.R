#Pull in data with shapefile for OH
library(raster)
library(rgdal)

#Pull in shapefiles

oh_shp_wya <- shapefile("C:/R/OGWells_wya.shp")
plot(oh_shp_wya)

#Stitch them all together and make sure it works
class(oh_shp)
head(oh_shp)

#Pull in geolocated address information
