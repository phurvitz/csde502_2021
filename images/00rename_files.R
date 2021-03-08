# rename files: renmove spaces and parens
library(tidyverse)

setwd("//udrive.uw.edu/udrive/csde502_winter_2021_course/images")
fnames <- list.files(path = ".", pattern = "*.png")

# rename
for(i in fnames){
    f <- i %>% str_replace_all(" ", "") %>% str_replace_all("\\(|\\)", "")
    if(!identical(i, f)){
        message(paste(i, "\n    ", f))
        #print(f)
        cmd <- "file.rename('xXx', 'yYy')" %>% str_replace("xXx", i) %>% str_replace("yYy", f)
        message(cmd)
        eval(parse(text = cmd))
    }
}

