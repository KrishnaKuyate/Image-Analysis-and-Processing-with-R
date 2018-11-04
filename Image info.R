#Attributes are properties of the image that might be present on some images and might affect image manipulation methods.

install.packages("magick")
library(magick)



#Read Image
image_read("Child_Cute.jpg")->Boy
Boy


image_comment(Boy, comment = NULL)

image_info(Boy)
