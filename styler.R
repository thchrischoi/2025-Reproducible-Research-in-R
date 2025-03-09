library(tidyverse)
library(styler)

# what's wrong with this? 
palmerpenguins::penguins|> select(flipper_length_mm,bill_length_mm,sex)|> 
  mutate(
    across(.cols=c('flipper_length_mm','bill_length_mm'),.fns=function(x) x/10),
    sex=if_else(is.na(sex),'unknown',sex)
  )

# the fix
styler::stysle_text(
  "palmerpenguins::penguins|> select(flipper_length_mm,bill_length_mm,sex)|> 
  mutate( across(.cols=c('flipper_length_mm','bill_length_mm'),.fns=function(x) x/10),sex=if_else(is.na(sex),'unknown',sex) )"
) 
