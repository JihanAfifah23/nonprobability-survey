# ANALISIS NON-PROBABILITY SAMPLING
# Tingkat Kepuasan Mahasiswa Kimia terhadap Pelayanan Administrasi Akademik FMIPA Universitas Mataram
# 1. Import Data
library(readxl)
data <-read_excel("C:/Users/asus/Downloads/Hasil Survei.xlsx")
# Melihat data
View(data)
# 2. Analisis Deskriptif
# Tabel frekuensi jenis kelamin
table(data$`Jenis Kelamin`)
# Persentase jenis kelamin
prop.table(table(data$`Jenis Kelamin`))*100
# 3. Tabel dan Grafik Distribusi Responden
frekuensi <- table(data$`Jenis Kelamin`)
frekuensi
persentase <- prop.table(frekuensi)*100
persentase
tabel_jk <- data.frame(
  Jenis_Kelamin = names(frekuensi),
  Frekuensi = as.vector(frekuensi),
  Persentase = round(as.vector(persentase),2)
)
tabel_jk
# Pie chart
pie(table(data$`Jenis Kelamin`),
    main = " Distribusi Responden Berdasarkan Jenis Kelamin")
# 4. Naive Estimation
# Menghitung jumlah responden puas
# (Puas + Sangat Puas)
puas <- sum(
  data$`10. Secara keseluruhan, saya puas terhadap pelayanan administrasi akademik FMIPA Universitas Mataram.` >= 4
)
# Total responden
n <- nrow(data)
# Naive estimation
p <- puas/n
# Hasil naive estimation
p
# Persentase
p*100
# 5. Weighting Sederhana
# Proporsi populasi
pop_laki <- 0.5
pop_perempuan <- 0.5
# Proporsi sampel
sampel_laki <- 0.3333
sampel_perempuan <- 0.6667
# Menghitung bobot
w_laki <- pop_laki/sampel_laki
w_perempuan <- pop_perempuan/sampel_perempuan
# Menampilkan bobot
w_laki
w_perempuan
# 6. Weighted Estimation
# Jumlah puas laki-laki
puas_laki <- 7
# Jumlah puas perempuan
puas_perempuan <- 18
# Weighted puas laki-laki
weighted_laki <- puas_laki*w_laki
# Weighted puas perempuan
weighted_perempuan <- puas_perempuan*w_perempuan
# Total weighted puas
total_weighted <- weighted_laki + weighted_perempuan
# Weighted estimation
weighted_estimation <- total_weighted/n
# Hasil weighted estimation
weighted_estimation
# Persentase weighted estimation
weighted_estimation*100
# 7. Grafik Perbandingan
estimasi <- c(p*100,
              weighted_estimation*100)
nama <- c("Naive Estimation",
          "Weighted Estimation")
barplot(estimasi,
        names.arg = nama,
        main = "Perbandingan Hasil Estimasi",
        ylab = "Persentase")
# 8. Output Hasil
cat("Naive Estimation =", p*100, "%\n")
cat("Weighted Estimation =",
    weighted_estimation*100,
    "%\n")