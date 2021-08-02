setwd('/Users/rahulsagi/Downloads')

superBowl <- read.csv('SuperBowl.csv', header = TRUE)

superBowl

lecturerData<-data.frame(name, birth_date, job, friends, alcohol,income, neurotic)

lecturerData

View(superBowl)

summary(superBowl)

barplot(superBowl$AdvCost)

barplot(superBowl$AdvCost[order(superBowl$AdvCost, decreasing = TRUE)], horiz  = FALSE, 
        las = 1, col = c("beige", "blanchedalmond", "bisque1", 
                         "bisque2", "bisque3", "bisque4"), 
        borders = TRUE, border = NA, 
        main = "SuperBowl Ad Costs", ylab   = "US Million Dollar", 
        xlab   = "SuperBowl Events")


boxplot(superBowl$AdvCost)

summary(superBowl)

str(superBowl)

rm(list = ls()) 




