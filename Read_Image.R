#Install Package :magick
#The new magick package is an ambitious effort to modernize and simplify high-quality image processing in R

install.packages("magick")
library(magick)

#Get Structure of magick package

str(magick::magick_config())


#Read Image
image_read("Child_Cute.jpg")->Boy
Boy

image_read("Cute_Pie.jpg")->girl

























