#Image Color

install.packages("magick")
library(magick)

#Read Image
image_read("Child_Cute.jpg")->Boy
Boy

image_modulate(Boy, brightness = 800, saturation = 200, hue = 600)

image_quantize(Boy, max = 500, colorspace = "rgb", dither = NULL,
               treedepth = NULL)

image_quantize(Boy, max = 500, colorspace = "gray", dither = NULL,
               treedepth = NULL)

image_quantize(Boy, max = 500, colorspace = "cmyk", dither = NULL,
               treedepth = NULL)

image_map(Boy, map, dither = FALSE)

image_channel(Boy, channel = "lightness")

image_transparent(Boy, color, fuzz = 0)

image_background(Boy, color, flatten = TRUE)

image_colorize(Boy, opacity, color)

image_contrast(Boy, sharpen = 15330)

image_normalize(Boy)

image_enhance(Boy)

image_equalize(Boy)

image_median(Boy, radius = 1)
