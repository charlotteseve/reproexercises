# Download project raw data
#
# This script will download the PanTHERIA and WWF WildFinder datasets. The
# four files will be stored in `data/`.
# 
# All functions used in the script have been developed for this project
# and can be found in the folder R/.
#
# Jane Doe <jane.doe@mail.me>
# 2023/11/09

## Download PanTHERIA database ----

dl_pantheria_data(overwrite = FALSE)


## Download WWF WildFinder database ----

dl_wildfinder_data(i=1, overwrite = FALSE)
dl_wildfinder_data(i=2, overwrite = FALSE)
dl_wildfinder_data(i=3, overwrite = FALSE)
