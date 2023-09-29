# data tabel
kolom_x <- c(78, 75, 67, 77, 70, 72, 78, 70, 77)
kolom_y <- c(100, 95, 70, 90, 90, 90, 89, 100, 100)

# a. Carilah Standar deviasi dari data selisih pasangan pengamatan tabel diatas

selisih = kolom_y - kolom_x
standar_deviasi = sd(selisih)
standar_deviasi
# standar deviasi = 7.838651

# b. Carilah nilai t (p-value)

nilai_t = 2 * pt(-abs(( (mean(selisih) - 0) / (standar_deviasi / sqrt(9)))), df=8)
nilai_t
# p-value = 0.0001372773

# c. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam
# hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴

var.test(kolom_x, kolom_y)
t.test(kolom_x, kolom_y, mu = 0, alternative = "two.sided", var.equal = TRUE, conf.level = 0.95)