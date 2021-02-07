#####Read in libraries and images#####
library(png)
library(ggplot2)
# library(extrafont)
# font_import()
# loadfonts(quiet = TRUE)

mypngfile <- download.file('https://a.espncdn.com/i/teamlogos/ncaa/500/153.png', destfile = 'mypng.png', mode = 'wb')
UNC.Logo <- readPNG('mypng.png')
# Jumpman.Logo <- read("Jumpman_logo.jpg") fix this
ACC.Logo <- readPNG("ACC.png")
UNCWhite.Logo <- readPNG("UNCWhite.png")

bot.left.argyle.dashed <- data.frame(x = c(-2, .05, 2.1,.05,  2.1, 4.15, 6.2, 4.15,  6.2, 8.25, 10.3, 8.25,  10.3, 12.35, 14.4, 12.35,  14.4, 16.45, 18.5, 16.45,  18.5, 20.55, 22.6, 20.55,  22.6, 24.65, 26.7, 24.65,  26.7, 28.75, 30.8, 28.75, 30.8, 32.85, 35, 32.85), 
                                     y=rep(c(-1, -.2, -1, -1.8), 9), 
                                     t=c(rep("a", 4), rep("b", 4), rep("c", 4), rep("d", 4), rep("e", 4), rep("f", 4), rep("g", 4), rep("h", 4), rep("i", 4)))

bot.left.argyle.solid <- data.frame(x = c(.05, 2.1, 4.15, 2.1,  4.15, 6.2, 8.25, 6.2,  8.25, 10.3, 12.35, 10.3,  12.35, 14.4, 16.45, 14.4,  16.45, 18.5, 20.55, 18.5,  20.55, 22.6, 24.65, 22.6,  24.65, 26.7, 28.75, 26.7,  28.75, 30.8, 32.85, 30.8), 
                                    y=rep(c(-1, -.2, -1, -1.8), 8), 
                                    t=c(rep("a", 4), rep("b", 4), rep("c", 4), rep("d", 4), rep("e", 4), rep("f", 4), rep("g", 4), rep("h", 4)))

top.left.argyle.solid <- bot.left.argyle.solid
top.left.argyle.solid$y <- bot.left.argyle.solid$y + 55.33
top.left.argyle.dashed <- bot.left.argyle.dashed
top.left.argyle.dashed$y <- bot.left.argyle.dashed$y + 55.33

top.right.argyle.solid <- top.left.argyle.solid
top.right.argyle.solid$x <- top.left.argyle.solid$x + 87
top.right.argyle.dashed <- top.left.argyle.dashed
top.right.argyle.dashed$x <- top.left.argyle.dashed$x + 87

bot.right.argyle.solid <- bot.left.argyle.solid
bot.right.argyle.solid$x <- bot.left.argyle.solid$x + 87
bot.right.argyle.dashed <- bot.left.argyle.dashed
bot.right.argyle.dashed$x <- bot.left.argyle.dashed$x + 87

left.argyle.solid <- data.frame(x = rep(c(-1, -.2, -1, -1.8), 8), 
                                y = c(9.87, 11.97, 14.07, 11.97,  14.07, 16.17, 18.27, 16.17,  18.27, 20.37, 22.47, 20.37,  
                                      22.47, 24.57, 26.67, 24.57,  26.67, 28.77, 30.87, 28.77,  30.87, 32.97, 35.07, 32.97, 
                                      35.07, 37.17, 39.27, 37.17,  39.27, 41.37, 43.47, 41.37), 
                                t=c(rep("a", 4), rep("b", 4), rep("c", 4), rep("d", 4), rep("e", 4), rep("f", 4), rep("g", 4), rep("h", 4)))
left.argyle.dashed <- data.frame(x=rep(c(-1, -.2, -1, -1.8), 9), 
                                 y= c(7.77, 9.87, 11.97, 9.87,  11.97, 14.07, 16.17, 14.07,  16.17, 18.27, 20.37, 18.27, 
                                      20.37, 22.47, 24.57, 22.47,  24.57, 26.67, 28.77, 26.67,  28.77, 30.87, 32.97, 30.87, 
                                      32.97, 35.07, 37.17, 35.07,  37.17, 39.27, 41.37, 39.27,  41.37, 43.47, 45.57, 43.47), 
                                 t=c(rep("a", 4), rep("b", 4), rep("c", 4), rep("d", 4), rep("e", 4), rep("f", 4), rep("g", 4), rep("h", 4), rep("i", 4)))

right.argyle.solid <- left.argyle.solid
right.argyle.solid$x <- left.argyle.solid$x + 122
right.argyle.dashed <- left.argyle.dashed
right.argyle.dashed$x <- left.argyle.dashed$x + 122


Left.End.Zone <- data.frame(x=c(.2, .2, 9.8, 9.8), 
                            y=c(.2, 53.15, 53.15, .2), 
                            t=rep("a, 4"))
Right.End.Zone <- data.frame(x=c(110.23, 110.23, 119.8, 119.8), 
                             y=c(.2, 53.15, 53.15, .2), 
                             t=rep("a", 4))


HomeLettersDF = data.frame(x = c(5, 5, 5, 5, 5, 5, 5, 5), y = c(5.07, 10.67, 16.27, 21.87, 31.47, 37.07, 42.67, 48.27), Letter = c("D", "O", "O", "K", "S", "U", "K", "S"))
AwayLettersDF = data.frame(x = c(115, 115, 115, 115, 115, 115, 115, 115), y = c(7.07, 12.67, 18.27, 23.87, 29.47, 35.07, 40.67, 46.27), Letter = c("A", "N", "I", "L", "O", "R", "A", "C"))
FarFieldNumbers = data.frame(x= c(19.6,29.9,39.8,49.9,59.8,69.9,79.8,89.9,99.6), y = c(45.83, 45.83, 45.83, 45.83, 45.83, 45.83, 45.83, 45.83, 45.83), Number = c(10,20,30,40,50,40,30,20,10))
CloseFieldNumbers = data.frame(x= c(20.4,30.1,40.2,50.1,60.2,70.1,80.2,90.1,100.4), y = c(7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5), Number = c(10,20,30,40,50,40,30,20,10))

#####Create Football Field#####
football_field <- ggplot()+
  geom_rect(aes(xmin = -4, xmax = 124, ymin = -4, ymax = 57.33), 
            fill = "#669933", colour = "#FFFFFF", size = .5) + 
  ##These First few geom-rect's set up the field space
  geom_rect(aes(xmin = 0, xmax = 120, ymin = 0, ymax = 53.33), 
            fill = "#669933", colour = "#FFFFFF", size = .5) +
  ##These next few set up the boxes around the field
  geom_rect(aes(xmin = 35, xmax = 85, ymin = -2, ymax = 0), fill = "#7BAFD4", colour = "#7BAFD4") +#bottom middle
  geom_rect(aes(xmin = 35, xmax = 85, ymin = 53.33, ymax = 55.33), fill = "#7BAFD4", colour = "#7BAFD4") +#top middle
  geom_rect(aes(xmin = -2, xmax = 35, ymin = -2, ymax = 0), fill = "#FFFFFF") + #bottom left
  geom_rect(aes(xmin = -2, xmax = 0, ymin = -2, ymax = 55.33), fill = "#FFFFFF") + #left
  geom_rect(aes(xmin = -2, xmax = 35, ymin = 53.33, ymax = 55.33), fill = "#FFFFFF") +#top left
  geom_rect(aes(xmin = 120, xmax = 122, ymin = -2, ymax = 55.33), fill = "#FFFFFF") + #right
  geom_rect(aes(xmin = 85, xmax = 122, ymin = -2, ymax = 0), fill = "#FFFFFF") + #bottom right
  geom_rect(aes(xmin = 85, xmax = 122, ymin = 53.33, ymax = 55.33), fill = "#FFFFFF") + #top right
  #try to add argyle
  
  #bottom left
  geom_polygon(data=bot.left.argyle.solid, mapping=aes(x=x, y=y, group = t), colour = "#7BAFD4", fill = "#7BAFD4", size = .05) +
  geom_polygon(data=bot.left.argyle.dashed, mapping=aes(x=x, y=y, group = t), colour = "#808080", fill = NA, linetype = "dotted", size = .5, alpha = .2) +
  
  #top left
  geom_polygon(data=top.left.argyle.solid, mapping=aes(x=x, y=y, group = t), colour = "#7BAFD4", fill = "#7BAFD4", size = .05) +
  geom_polygon(data=top.left.argyle.dashed, mapping=aes(x=x, y=y, group = t), colour = "#808080", fill = NA, linetype = "dotted", size = .5, alpha = .2) +
  
  #top right
  geom_polygon(data=top.right.argyle.solid, mapping=aes(x=x, y=y, group = t), colour = "#7BAFD4", fill = "#7BAFD4", size = .05) +
  geom_polygon(data=top.right.argyle.dashed, mapping=aes(x=x, y=y, group = t), colour = "#808080", fill = NA, linetype = "dotted", size = .5, alpha = .2) +
  
  #bottom right
  geom_polygon(data=bot.right.argyle.solid, mapping=aes(x=x, y=y, group = t), colour = "#7BAFD4", fill = "#7BAFD4", size = .05) +
  geom_polygon(data=bot.right.argyle.dashed, mapping=aes(x=x, y=y, group = t), colour = "#808080", fill = NA, linetype = "dotted", size = .5, alpha = .2) +
  
  #left
  geom_polygon(data=left.argyle.solid, mapping=aes(x=x, y=y, group = t), colour = "#7BAFD4", fill = "#7BAFD4", size = .05) +
  geom_polygon(data=left.argyle.dashed, mapping=aes(x=x, y=y, group = t), colour = "#808080", fill = NA, linetype = "dotted", size = .5, alpha = .2) +
  
  #right
  geom_polygon(data=right.argyle.solid, mapping=aes(x=x, y=y, group = t), colour = "#7BAFD4", fill = "#7BAFD4", size = .05) +
  geom_polygon(data=right.argyle.dashed, mapping=aes(x=x, y=y, group = t), colour = "#808080", fill = NA, linetype = "dotted", size = .5, alpha = .2) +
  
  ##These are the yardmarkers
  geom_segment(aes(x = 10, xend = 10, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 15, xend = 15, y = 0, yend = 53.33), colour = "#FFFFFF") +
  ##These two are the blue lines around the 20 signifying the Red Zone
  geom_segment(aes(x = 29.8, xend = 29.8, y = 0, yend = 53.33), colour = "#232D4B") +
  geom_segment(aes(x = 30.2, xend = 30.2, y = 0, yend = 53.33), colour = "#232D4B") +
  ##These are more yardmarkers
  geom_segment(aes(x = 20, xend = 20, y = 0, yend = 53.33), colour = "#FFFFFF") + 
  geom_segment(aes(x = 25, xend = 25, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 30, xend = 30, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 35, xend = 35, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 40, xend = 40, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 45, xend = 45, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 50, xend = 50, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 55, xend = 55, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 60, xend = 60, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 65, xend = 65, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 70, xend = 70, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 75, xend = 75, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 80, xend = 80, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 85, xend = 85, y = 0, yend = 53.33), colour = "#FFFFFF") +
  ##These two are the blue lines around the 20 signifying the Red Zone
  geom_segment(aes(x = 89.8, xend = 89.8, y = 0, yend = 53.33), colour = "#232D4B") +
  geom_segment(aes(x = 90.2, xend = 90.2, y = 0, yend = 53.33), colour = "#232D4B") +
  #More yardmarkers
  geom_segment(aes(x = 90, xend = 90, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 95, xend = 95, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 100, xend = 100, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 105, xend = 105, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 110, xend = 110, y = 0, yend = 53.33), colour = "#FFFFFF") +
  geom_segment(aes(x = 122, xend = 122, y = -2, yend = 55.33), colour = "#FFFFFF") +
  geom_segment(aes(x = -2, xend = -2, y = -2, yend = 55.33), colour = "#FFFFFF") +
  geom_segment(aes(x = -2, xend = 122, y = -2, yend = -2), colour = "#FFFFFF") +
  geom_segment(aes(x = -2, xend = 122, y = 55.33, yend = 55.33), colour = "#FFFFFF") +
  ##These are the hashes
  geom_segment(aes(x = 10, xend = 110, y = 20, yend = 20), colour = "#FFFFFF", linetype = "dashed") + 
  geom_segment(aes(x = 10, xend = 110, y = 33.33, yend = 33.33), colour = "#FFFFFF", linetype = "dashed") +
  geom_segment(aes(x = 10, xend = 110, y = .5, yend = .5), colour = "#FFFFFF", linetype = "dashed") +
  geom_segment(aes(x = 10, xend = 110, y = 52.83, yend = 52.83), colour = "#FFFFFF", linetype = "dashed") +
  ## The next two lines are the FG Posts
  geom_segment(aes(x = 0, xend = 0, y=23.57, yend = 29.77), colour = "yellow", size = 1.3) + 
  geom_segment(aes(x = 120, xend = 120, y = 23.57, yend = 29.77), colour = "yellow", size = 1.3) +
  ##These are the Numbers on the field
  geom_text(data = CloseFieldNumbers, mapping = aes(x,y, label = Number), 
            colour = "#FFFFFF", family = "Impact", size = 6) + #change the font later
  geom_text(data = FarFieldNumbers, mapping = aes(x, y, label = Number), 
            colour = "#FFFFFF", family = "Impact", size = 6, angle = 180) +
  ##This is where you add the Midfield Logo
  annotation_raster(UNC.Logo, ymin = 18, ymax = 35.5, xmin = 50, xmax = 70) +
  #Endzone Blue
  geom_polygon(data=Left.End.Zone, mapping=aes(x=x, y=y, group = t), colour = "#7BAFD4", fill = "#7BAFD4") +
  geom_polygon(data=Right.End.Zone, mapping=aes(x=x, y=y, group = t), colour = "#7BAFD4", fill = "#7BAFD4") +
  #Endzone Letters
  # geom_text(data = HomeLettersDF, aes(x, y, label = Letter), colour = "#000000", family = "Impact", size = 10, angle = 90) + 
  # geom_text(data = AwayLettersDF, aes(x, y, label = Letter), colour = "#000000", family = "Impact", size = 10, angle = 270) +
  geom_text(data = HomeLettersDF, aes(x, y, label = Letter), colour = "#FFFFFF", family = "Impact", size = 9, angle = 90) +
  geom_text(data = AwayLettersDF, aes(x, y, label = Letter), colour = "#FFFFFF", family = "Impact", size = 9, angle = 270) +
  ##Add ACC Logos
  annotation_raster(ACC.Logo, ymin = 12.67, ymax = 16, xmin = 81, xmax = 90) + 
  annotation_raster(ACC.Logo, ymin = 37.33, ymax = 40.67, xmin = 31, xmax = 40) +
  ##Add White UNCs
  annotation_raster(UNCWhite.Logo, xmin = 38.5, xmax = 41.5, ymin = 53.33, ymax = 55.33) +
  annotation_raster(UNCWhite.Logo, xmin = 78.5, xmax = 81.5, ymin = 53.33, ymax = 55.33) +
  annotation_raster(UNCWhite.Logo, xmin = 38.5, xmax = 41.5, ymin = -2, ymax = 0) +
  annotation_raster(UNCWhite.Logo, xmin = 78.5, xmax = 81.5, ymin = -2, ymax = 0) +
  ##This removes all of the exterior lines from a typical ggplot
  theme(rect = element_blank(), 
        line = element_blank(),
        text = element_blank()) +
  ggsave("UNC_Football_Field.png", width = 12.8, height = 6.13)

