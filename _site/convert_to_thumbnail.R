require(rlist)

DIR.ROOT <- "/Users/jankocizel/Documents/Dropbox/Projects/PhD Thesis/Effect of Macroprudential Policies/WEBPAGE/GridGallery/img"

setwd(DIR.ROOT)

list.files(
    path = sprintf("%s/%s",
                   DIR.ROOT,
                   "/large")
) %>>%
    grep(
        pattern = "\\.png",
        value = TRUE
    ) %>>%
    (x~sprintf(
         fmt = "convert ./large/%s -thumbnail 400 ./thumb/%s",
         x,x
     )) %>>%
    list.map({
        system(.)
    })

