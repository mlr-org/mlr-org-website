library(ggplot2) 

colors = c("#0072B2", "#E69F00", "#CC79A7")
grey_dark = "grey26"
grey_light = "#456a64"

eps = 0.1

data_sets = list(
  data.frame(
    x = c(0 + eps, 0 + eps, 1 - eps, 1 - eps), 
    y = c(0 + eps, 3 - eps, 3 - eps, 0 + eps)
  ),
  data.frame(
    x = c(1 + eps, 1 + eps, 2 - eps, 2 - eps), 
    y = c(0 + eps, 3 - eps, 3 - eps, 0 + eps)
  ),
  data.frame(
    x = c(2 + eps, 2 + eps, 3 - eps, 3 - eps), 
    y = c(0 + eps, 3 - eps, 3 - eps, 0 + eps)
  )
)

plot_left = ggplot() + 
  theme_void() + 
  coord_cartesian(xlim = c(0, 3), ylim = c(0, 3)) + 
  geom_polygon(data = data_sets[[1]], mapping = aes(x, y), fill = grey_light, alpha = 0.5) + 
  geom_polygon(data = data_sets[[2]], mapping = aes(x, y), fill = grey_light, alpha = 0.5) +
  geom_polygon(data = data_sets[[3]], mapping = aes(x, y), fill = colors[[3]])  
print(plot_left)
    
ggsave("~/mlr/mlr-org-website/images/banner_left.png", plot_left)

plot_right = ggplot() + 
  theme_void() + 
  coord_cartesian(xlim = c(0, 3), ylim = c(0, 3)) + 
  geom_polygon(data = data_sets[[1]], mapping = aes(x, y), fill = colors[[1]]) + 
  geom_polygon(data = data_sets[[2]], mapping = aes(x, y), fill = grey_light, alpha = 0.5) + 
  geom_polygon(data = data_sets[[3]], mapping = aes(x, y), fill = grey_light, alpha = 0.5)+ 
  annotate("text", x = 1.5, y = 1.5, label = "m", color = "white", size = 100, alpha = 0.1)
print(plot_right)

ggsave("~/mlr/mlr-org-website/images/banner_right.png", plot_right)

plot_middle = ggplot() + 
  theme_void() + 
  coord_cartesian(xlim = c(0, 3), ylim = c(0, 3)) + 
  geom_polygon(data = data_sets[[1]], mapping = aes(x, y), fill = grey_light, alpha = 0.5) + 
  geom_polygon(data = data_sets[[2]], mapping = aes(x, y), fill = colors[[2]]) + 
  geom_polygon(data = data_sets[[3]], mapping = aes(x, y), fill = grey_light, alpha = 0.5) 

print(plot_middle)

ggsave("~/mlr/mlr-org-website/images/banner_middle.png", plot_middle)

plot_empty = ggplot() + theme_void()  

plot = plot_grid(plot_left, plot_empty, plot_middle, plot_empty, plot_right, nrow = 1)
ggsave("~/mlr/mlr-org-website/images/banner.png", size )
