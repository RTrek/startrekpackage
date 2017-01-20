load("../TNGperrole/data/TNG.rda")
library(dplyr)
library(tibble)
library(stringr)
TNGvoices <- TNG %>%
    as_tibble() %>%
    filter(type == "speech") %>%
    mutate(who = str_replace(who, "'S COM VOICE", "") %>%
                                       str_replace( "\\(.{1,}\\)", "") %>%
                                       str_replace( "\".{1,}\"", "") %>%
                                       str_replace( "YOUNG", "") %>%
                                       str_replace( "'S VOICE", "") %>%
                                       str_trim()) %>%
    filter(who %in% c("PICARD","RIKER","Q","DATA","GEORDI","GUINAN","O'BRIAN",
                      "WORF", "BEVERLY", "TROI","WESLEY", "PULASKI", "COMPUTER VOICE")) %>%
    group_by(who) %>%
    select(who, text, speechdescription)
devtools::use_data(TNGvoices)
