group <- factor(rep(c("A", "B", "C"), each = 5))
score <- c(5, 7, 8, 6, 9, 4, 6, 7, 8, 9, 3, 5, 4, 6, 5)
data <- data.frame(group, score)
anova_result <- aov(score ~ group, data = data)
summary(anova_result)


fertilizer <- factor(rep(c("A", "B"), each = 8))
plant_type <- factor(rep(c("X", "Y"), times = 4))
score <- c(4, 5, 6, 7, 3, 4, 5, 6, 6, 7, 8, 9, 4, 5, 6, 7)
data2 <- data.frame(fertilizer, plant_type, score)
anova2<- aov(growth ~ fertilizer * plant_type, data = data2)
summary(anova2)