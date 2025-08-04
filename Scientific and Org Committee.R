library(ggplot2)
library(cowplot)  # For plot_grid
library(png)      # If images are PNGs
library(grid)     # For rasterGrob    

# Load the images
imgSci1 <- readPNG("images/RahulBhattacharya.png")
imgSci2 <- readPNG("images/SatrajitRoychoudhury.png")
imgSci3 <- readPNG("images/AlexSverdlov.png")
imgSci4 <- readPNG("images/HongjianZhu.png")

# Convert to grobs
grob1 <- rasterGrob(imgSci1, interpolate = TRUE)
grob2 <- rasterGrob(imgSci2, interpolate = TRUE)
grob3 <- rasterGrob(imgSci3, interpolate = TRUE)
grob4 <- rasterGrob(imgSci4, interpolate = TRUE)

# Wrap each grob in a plot with text underneath
p1 <- ggdraw() +
  draw_grob(grob1, x = 0.05, y = 0.2, width = 0.9, height = 0.8) +
  draw_label("Prof. Rahul Bhattacharya", 
             y = 0.16, size = 12, hjust = 0.5) +
  draw_label("Professor in Statistics \nCalcutta University, India",
             y = 0.1, size = 10, hjust = 0.5,fontface = "italic",color = "gray40") +
  theme(plot.margin = margin(0, 0.25, 0, 0.25, "in")) # adds spacing around

p2 <- ggdraw() +
  draw_grob(grob2, x = 0.05, y = 0.2, width = 0.9, height = 0.8) +
  draw_label("Satrajit Roychoudhury", 
             y = 0.16, size = 12, hjust = 0.5) +
  draw_label("Executive Director and Head \nStatistical Research and Innovation \n Pfizer, USA",
             y = 0.08, size = 10, hjust = 0.5,fontface = "italic",color = "gray40") +
  theme(plot.margin = margin(0, 0.25, 0, 0.25, "in")) # adds spacing around

p3 <- ggdraw() +
  draw_grob(grob3, x = 0.05, y = 0.2, width = 0.9, height = 0.8) +
  draw_label("Alex Sverdlov", 
             y = 0.16, size = 12, hjust = 0.5) +
  draw_label("Senior Director, Statistical Scientist \n Novartis, USA",
             y = 0.1, size = 10, hjust = 0.5,fontface = "italic",color = "gray40") +
  theme(plot.margin = margin(0, 0.25, 0, 0.25, "in")) # adds spacing around

p4 <- ggdraw() +
  draw_grob(grob4, x = 0.05, y = 0.2, width = 0.9, height = 0.8) +
  draw_label("Hongjian Zhu", 
             y = 0.16, size = 12, hjust = 0.5) +
  draw_label("SVP, Global Head of Statistics \nand Data Science \n SystImmune Inc.",
             y = 0.08, size = 10, hjust = 0.5,fontface = "italic",color = "gray40") +
  theme(plot.margin = margin(0, 0.25, 0, 0.25, "in")) # adds spacing around


# Combine side-by-side with equal width and some spacing
plot_grid(p1, p3, p2, p4, nrow = 2, rel_widths = c(0.5,0.5))


library(ggplot2)
library(cowplot)  # For plot_grid
library(png)      # If images are PNGs
library(grid)     # For rasterGrob    

# Load the images
imgOrg1 <- readPNG("images/AritraMukherjee.png")
imgOrg2 <- readPNG("images/AyonMukherjee.png")
imgOrg3 <- readPNG("images/JamesWason.png")

# Convert to grobs
grob1 <- rasterGrob(imgOrg1, interpolate = TRUE)
grob2 <- rasterGrob(imgOrg2, interpolate = TRUE)
grob3 <- rasterGrob(imgOrg3, interpolate = TRUE)

# Wrap each grob in a plot with text underneath
p1 <- ggdraw() +
  draw_grob(grob1, x = 0.05, y = 0.2, width = 0.9, height = 0.8) +
  draw_label("Dr. Aritra Mukherjee", 
             y = 0.16, size = 12, hjust = 0.5) +
  draw_label("Research Associate \nNewcastle University",
             y = 0.1, size = 10, hjust = 0.5,fontface = "italic",color = "gray40") +
  theme(plot.margin = margin(0, 0.2, 0, 0.2, "in")) # adds spacing around

p2 <- ggdraw() +
  draw_grob(grob2, x = 0.05, y = 0.2, width = 0.9, height = 0.8) +
  draw_label("Dr. Ayon Mukherjee", 
             y = 0.16, size = 12, hjust = 0.5) +
  draw_label("Director and Head \n of Biostatistics \n Eli Lilly",
             y = 0.1, size = 10, hjust = 0.5,fontface = "italic",color = "gray40") +
  theme(plot.margin = margin(0, 0.2, 0, 0.2, "in")) # adds spacing around

p3 <- ggdraw() +
  draw_grob(grob3, x = 0.05, y = 0.2, width = 0.9, height = 0.8) +
  draw_label("Prof. James Wason", 
             y = 0.16, size = 12, hjust = 0.5) +
  draw_label("Professor \n Newcastle University",
             y = 0.1, size = 10, hjust = 0.5,fontface = "italic",color = "gray40") +
  theme(plot.margin = margin(0, 0.2, 0, 0.2, "in")) # adds spacing around


# Combine side-by-side with equal width and some spacing
plot_grid(p1, p2, p3, nrow = 1, rel_widths = c(1/3, 1/3, 1/3))

```
**Organising Committee**
  
  
  <img src="ScientificOrganisingCommittee_files/figure-html/setup-2.png" 
height= "500" 
style="display:block; margin:auto;" >
  
  