
# install.packages('googlesheets4')

#library(tidyverse)
library(googlesheets4)
library(readr)

# The data is publicly available so we don't need to authenticate
gs4_deauth()

survey_data <- read_sheet("https://docs.google.com/spreadsheets/d/1IWozqxYrm033VTfxGf-Z1oUwcSrAAMu2RWW5_2LyYEY/edit?gid=1432295196#gid=1432295196")

survey_data %>%
  write_rds("data/survey_data.rds")
