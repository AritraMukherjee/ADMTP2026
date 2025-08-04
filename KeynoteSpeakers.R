
```{r setup, include=FALSE}
library(ggplot2)
library(cowplot)  # For plot_grid
library(png)      # If images are PNGs
library(grid)     # For rasterGrob    

# Load the images
img1 <- readPNG("images/CorneliaKunz.png")
img2 <- readPNG("images/AA.png")

# Convert to grobs
grob1 <- rasterGrob(img1, interpolate = TRUE)
grob2 <- rasterGrob(img2, interpolate = TRUE)

# Wrap each grob in a plot with text underneath
p1 <- ggdraw() +
  draw_grob(grob1, x = 0.05, y = 0.2, width = 0.9, height = 0.8) +
  draw_label("Dr. Name Surname", 
             y = 0.16, size = 12, hjust = 0.5) +
  draw_label("Designation \nPharmaceutical Company",
             y = 0.1, size = 10, hjust = 0.5,fontface = "italic",color = "gray40") +
  theme(plot.margin = margin(0, 0.25, 0, 0.25, "in")) # adds spacing around

p2 <- ggdraw() +
  draw_grob(grob2, x = 0.05, y = 0.2, width = 0.9, height = 0.8) +
  draw_label("Prof. Name Surname", 
             y = 0.16, size = 12, hjust = 0.5) +
  draw_label("Designation \nUniversity",
             y = 0.1, size = 10, hjust = 0.5,fontface = "italic",color = "gray40") +
  theme(plot.margin = margin(0, 0.25, 0, 0.25, "in")) # adds spacing around

# Combine side-by-side with equal width and some spacing
plot_grid(p1, p2, nrow = 1, rel_widths = c(0.5, 0.5))

```
