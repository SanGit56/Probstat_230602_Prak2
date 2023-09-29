alfa <- 0.05
conf_lev <- 0.95

# data Bandung
shm_bdg = 20
mean_bdg = 3.64
standev_bdg = 1.67

# data Bali
shm_bali = 27
mean_bali = 2.79
standev_bali = 1.5

# B. Hitung sampel statistik

sp <- (((shm_bdg - 1)*(standev_bdg^2) + (shm_bali - 1)*(standev_bali^2)) / (shm_bdg + shm_bali - 2))^(0.5)
sp

# C. Lakukan uji statistik (df =2)

df <- 2
install.packages("BSDA")
library(BSDA)

tsum.test(mean.x = mean_bdg, s.x = standev_bdg, n.x =  shm_bdg,
          mean.y = mean_bali, s.y = standev_bali, n.y = shm_bali, 
          alternative = "two.sided", mu = 0, var.equal = TRUE,
          conf.level = conf_lev)

# D. Nilai kritikal

nil_krit <- qt(p = alfa/2, df, lower.tail = FALSE)
nil_krit