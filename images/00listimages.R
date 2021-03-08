# print image file names in a nice format for Rmd

setwd("//udrive.uw.edu/udrive/csde502_winter_2021_course/images")
fnames <- list.files(path = ".", pattern = "*.png")

for(i in fnames){
    message(paste0("![](images/", i, ")\n"))
}
