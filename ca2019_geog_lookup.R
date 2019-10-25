################################################################################
####                        CA 2019 area code look-up                       ####
################################################################################

# ----------------------------------------------------------------------------
# This script matches raw data with council names to standard geography codes
# (CA2019 definitions).
# ----------------------------------------------------------------------------

library(tidyverse)

## crate dataframe for lookup
ca_lookup <- data.frame(
  ca2019 = c("S12000005", "S12000006", "S12000006", 
             "S12000008", "S12000010", "S12000011", 
             "S12000013", "S12000014", "S12000047", 
             "S12000017", "S12000018", "S12000019", 
             "S12000020", "S12000021", "S12000023", 
             "S12000048", "S12000048", "S12000026", 
             "S12000027", "S12000028", "S12000029", 
             "S12000030", "S12000033", "S12000034", 
             "S12000035", "S12000036", "S12000036", 
             "S12000038", "S12000039", "S12000040", 
             "S12000041", "S12000042", "S12000050", 
             "S12000045", "S12000049"),
  ca_name = c("Clackmannanshire","Dumfries & Galloway", "Dumfries and Galloway",
              "East Ayrshire", "East Lothian", "East Renfrewshire", 
              "Na h-Eileanan Siar", "Falkirk", "Fife", 
              "Highland", "Inverclyde","Midlothian", 
              "Moray", "North Ayrshire", "Orkney Islands", 
              "Perth & Kinross", "Perth and Kinross", "Scottish Borders", 
              "Shetland Islands", "South Ayrshire", "South Lanarkshire", 
              "Stirling", "Aberdeen City", "Aberdeenshire", 
              "Argyll & Bute", "Edinburgh, City of", "City of Edinburgh", 
              "Renfrewshire", "West Dunbartonshire", "West Lothian", 
              "Angus", "Dundee City", "North Lanarkshire", 
              "East Dunbartonshire", "Glasgow City"))

## match to raw data (change df name as required)
df <- df %>% left_join(ca_lookup, by = "ca_name")

## check for unmatched cases
sum(is.na(df$ca2019))




