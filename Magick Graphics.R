####Magick Graphics Device####

install.packages("magick")
library(magick)
image_read("Child_Cute.jpg")->Boy
Boy

# Produce image using graphics device
fig <- image_graph(res = 96)
ggplot2::qplot(mpg, wt, data = mtcars, colour = cyl)
dev.off()

# Combine
out <- image_composite(fig, Boy, offset = "+70+30")
print(out)

# Or paint over an existing image
img <- image_draw(Boy)
rect(20, 20, 200, 100, border = "red", lty = "dashed", lwd = 5)
abline(h = 300, col = 'blue', lwd = '10', lty = "dotted")
text(10, 250, "Hoiven-Glaven", family = "monospace", cex = 4, srt = 90)
palette(rainbow(11, end = 0.9))
symbols(rep(200, 11), seq(0, 400, 40), circles = runif(11, 5, 35),
        bg = 1:11, inches = FALSE, add = TRUE)
dev.off()
print(img)


# Vectorized example with custom coordinates
earth <- Boy
img <- image_draw(earth, xlim = c(0,1), ylim = c(0,1))
rect(.1, .1, .9, .9, border = "red", lty = "dashed", lwd = 5)
text(.5, .9, "Our planet", cex = 3, col = "white")
dev.off()
print(img)
