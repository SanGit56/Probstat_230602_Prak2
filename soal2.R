rata2 <- 25000
jml <- 100
rata2_sampel <- 23500
standar_deviasi <- 3000

# menghitung interval confidence & nilai statistik
inter_conf <- qnorm(p=.05, lower.tail = FALSE)
nilai_stat <- (rata2_sampel - rata2) / (standar_deviasi / sqrt(jml))

install.packages("BSDA")
library(BSDA)
zsum.test(mean.x=23500, sigma.x = 3000, n.x = 100, alternative = "greater", mu = 25000, conf.level = 0.95)