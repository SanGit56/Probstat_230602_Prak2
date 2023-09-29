data <- read.csv("GTL.csv")
print(data)

set.seed(1234)
str(data)
head(data)

# a. Buatlah plot sederhana untuk visualisasi data.

library(ggplot2)
ggplot(data, aes(x = Temp, y = Light, color = Glass)) + geom_point() +
  labs(x = "Suhu", y = "Cahaya", color = "Kaca") + theme_minimal()

# b. Lakukan uji ANOVA dua arah.

hsl_anova <- aov(Light ~ Glass * Temp, data = data)
summary(hsl_anova)

# c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk
# setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi).

tbl_hsl <- aggregate(Light ~ Glass + Temp, data, function(x) c(mean = mean(x), sd = sd(x)))
print(tbl_hsl)