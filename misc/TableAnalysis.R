library(leaflet)
library(sf)
library(classInt)

# Visualising the GeoJSON file as a data table
geojson_data <- st_read("C:/Users/armvg/Desktop/CLASSES/2023-2024/FALL/GEOG 328/GEOG328-InteractiveWebMapping/assets/waCovidData.geojson")

# Minimum Number of Cases Per 10k People

min <- min(geojson_data$casePer10k)

# Maximum Number of Cases Per 10 People

max <- max(geojson_data$casePer10k)

# Natural Breaks Scheme
intervals <- classIntervals(geojson_data$casePer10k, n = 6, style = "jenks")
breaks <- intervals$brks
cat("Class Breaks:", breaks, "\n")