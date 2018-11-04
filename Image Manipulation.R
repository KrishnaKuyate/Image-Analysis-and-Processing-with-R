#Operations to manipulate or combine multiple frames of an image.

install.packages("magick")
library(magick)

#Read Image
image_read("Child_Cute.jpg")->Boy
Boy

image_animate(Boy, fps = 10, loop = 0, dispose = c("background","previous", "none"))


image_morph(Boy, frames = 8)

image_mosaic(Boy, operator = NULL)

image_montage(Boy)

image_flatten(Boy, operator = NULL)

image_average(Boy)

image_append(Boy ,stack = FALSE)
