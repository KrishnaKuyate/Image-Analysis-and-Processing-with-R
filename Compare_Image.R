####Image Analysis##################
###calculates a metric by comparing image with a reference image.
img1<-image_blur(Boy,3)
img1
img2<-image_oilpaint(Boy)
img2

img_input<-c(Boy,img1,img2,Boy)

if(magick_config()$version >= "6.8.7")
{
  diff_img <- image_compare(img_input,Boy, metric = "AE")
  attributes(diff_img)
}




