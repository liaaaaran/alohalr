## code to prepare `mcr_fish` dataset goes here

library(usethis)
library(metajam)

# Save link location for the data package:
mcr_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-mcr.1041.2&entityid=c4e5f3ad43846c474e8a3fd0db8bb623"

# Download the data package with metajam
mcr_download <- download_d1_data(data_url = mcr_url, path = tempdir())

# Read in data
mcr_files <- read_d1_files(mcr_download)
mcr_fish <- mcr_files$data

usethis::use_data(mcr_fish, overwrite = TRUE)
