## code to prepare `luq_anole` dataset goes here
# Attach packages
library(usethis)
library(metajam)

# Save link location for the data package:
luq_url = "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-luq.5.347700&entityid=4aacbd7e95d37636d362ee2752382c74"
# Download the data package with metajam
luq_download <- download_d1_data(data_url = luq_url, path = tempdir())

# Read in data
luq_files <- read_d1_files(luq_download)
luq_anole <- luq_files$data

usethis::use_data(luq_anole, overwrite = TRUE)
