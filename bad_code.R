

# This is bad code

# it works, but it's bad



### Make it better






## Make dataframe

dat = data.frame(x = c(1:10),
                 y = c(seq(6,60,6)),
                 treated = c('trt','untrt','ctr','untrt','trt','ctr','trt','trt','ctr','trt'))

require(dplyr)

dat2 = dplyr::mutate(dat, z = x*y) 

library(dplyr)
dat_3 = dat2 |>
  group_by(treated) %>%
  summarise(z_mean = mean(z)) |>
  ungroup()





# Date: 03/04/2025