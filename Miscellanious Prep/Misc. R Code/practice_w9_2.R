library('ggplot2')
head(mpg)

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y= hwy))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y= hwy, color = class))

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y= cty))

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = cty, linetype= drv))

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv))