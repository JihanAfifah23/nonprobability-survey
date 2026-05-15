# nonprobability-survey

# Analisis Tingkat Kepuasan Mahasiswa Statistika terhadap Pelayanan Administrasi Akademik di FMIPA Universitas Mataram

## Latar Belakang
Pelayanan administrasi akademik merupakan salah satu aspek penting dalam menunjang kelancaran kegiatan perkuliahan di perguruan tinggi. Pelayanan yang baik dapat membantu mahasiswa dalam memperoleh informasi akademik, mengurus dokumen perkuliahan, serta memenuhi berbagai kebutuhan administrasi dengan lebih mudah dan cepat. Sebaliknya, pelayanan yang kurang optimal dapat menyebabkan hambatan dalam proses akademik mahasiswa.

Kepuasan mahasiswa terhadap pelayanan administrasi akademik dapat digunakan sebagai salah satu indikator kualitas pelayanan yang diberikan oleh institusi pendidikan. Oleh karena itu, evaluasi terhadap pelayanan administrasi akademik perlu dilakukan agar pihak fakultas dapat mengetahui kelebihan maupun kekurangan pelayanan yang telah diberikan.

FMIPA Universitas Mataram sebagai salah satu fakultas dengan jumlah mahasiswa yang cukup banyak tentunya memerlukan pelayanan administrasi akademik yang baik dan responsif. Untuk mengetahui tingkat kepuasan mahasiswa statistika terhadap pelayanan administrasi akademik di FMIPA Universitas Mataram, dilakukan survei online menggunakan Google Form. Penelitian ini menggunakan teknik non probability sampling dengan metode convenience sampling.

## Tujuan
Tujuan dari penelitian ini adalah:
- Mengetahui tingkat kepuasan mahasiswa statistika terhadap pelayanan administrasi akademik di FMIPA Universitas Mataram melalui survei online.
- Mengetahui distribusi responden berdasarkan jenis kelamin.
- Menghitung hasil naive estimation terhadap tingkat kepuasan mahasiswa.
- Melakukan weighting sederhana berdasarkan jenis kelamin untuk memperoleh hasil estimasi yang lebih representatif.

## Metode
Penelitian ini merupakan penelitian kuantitatif dengan pendekatan survei online. Data diperoleh melalui penyebaran kuesioner menggunakan Google Form kepada mahasiswa Satistika FMIPA Universitas Mataram.

Teknik sampling yang digunakan adalah non probability sampling dengan metode convenience sampling, yaitu pengambilan sampel berdasarkan kemudahan memperoleh responden. Jumlah responden dalam penelitian ini sebanyak 30 mahasiswa.

Pengolahan data dilakukan menggunakan bahasa pemrograman R dengan bantuan package `readxl`. Analisis dilakukan menggunakan script pada file `analisis.R`.

Tahapan analisis data meliputi:
1. Import data survei dari file Excel menggunakan sintax :

   library(readxl)

   data <-read_excel("C:/Users/asus/Downloads/Hasil Survei.xlsx")

2. Analisis deskriptif distribusi responden berdasarkan jenis kelamin menggunakan sintax :

    table(data$`Jenis Kelamin`)

   prop.table(table(data$`Jenis Kelamin`))*100

3. Pembuatan tabel distribusi frekuensi dan persentase responden menggunakan sintax :

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

4. Pembuatan grafik distribusi responden menggunakan pie chart menggunakan sintax :

    pie(table(data$`Jenis Kelamin`),
    main = " Distribusi Responden Berdasarkan Jenis Kelamin")
   
5. Perhitungan naive estimation untuk memperoleh estimasi awal tingkat kepuasan mahasiswa menggunakan sintax :

   puas <- sum(
  data$`10. Secara keseluruhan, saya puas terhadap pelayanan administrasi akademik FMIPA
Universitas Mataram.` >= 4
 )
   n <- nrow(data)

   p <- puas/n

   p

   p*100
    
6. Perhitungan weighting sederhana berdasarkan jenis kelamin untuk mengurangi bias sampel menggunakan sintax :

   pop_laki <- 0.5

   pop_perempuan <- 0.5

   sampel_laki <- 0.3333

   sampel_perempuan <- 0.6667

   w_laki <- pop_laki/sampel_laki

   w_perempuan <- pop_perempuan/sampel_perempuan

   w_laki

   w_perempuan

   puas_laki <- 7

   puas_perempuan <- 18

   weighted_laki <- puas_laki*w_laki

   weighted_perempuan <- puas_perempuan*w_perempuan

   total_weighted <- weighted_laki + weighted_perempuan

   weighted_estimation <- total_weighted/n

   weighted_estimation

   weighted_estimation*100

7. Perbandingan hasil naive estimation dan weighted estimation menggunakan grafik batang dengan sintax :
   estimasi <- c(p*100,
              weighted_estimation*100)

   nama <- c("Naive Estimation",
          "Weighted Estimation")

   barplot(estimasi,
        names.arg = nama,
        main = "Perbandingan Hasil Estimasi",
        ylab = "Persentase")

## Hasil dan Pembahasan

### Analisis Deskriptif
Analisis deskriptif dilakukan untuk mengetahui gambaran karakteristik responden yang berpartisipasi dalam survei online. Karakteristik responden yang dianalisis dalam penelitian ini adalah berdasarkan jenis kelamin.

| Jenis Kelamin | Frekuensi | Persentase |
|---|---|---|
| Laki-laki | 10 | 33.33% |
| Perempuan | 20 | 66.67% |
| Total | 30 | 100% |

Berdasarkan hasil survei, diperoleh sebanyak 30 responden dengan distribusi jenis kelamin terdiri atas 10 responden laki-laki (33,33%) dan 20 responden perempuan (66,67%). Hasil ini menunjukkan bahwa mayoritas responden dalam penelitian ini adalah perempuan.

### Grafik Distribusi Responden
Visualisasi data dilakukan menggunakan pie chart untuk memperlihatkan distribusi responden berdasarkan jenis kelamin. 

<img width="1097" height="812" alt="Grafik Distribusi Responden" src="https://github.com/user-attachments/assets/6ceb3cff-6286-4a90-b223-8202cb00251c" />

Grafik menunjukkan bahwa jumlah responden perempuan lebih mendominasi dibandingkan responden laki-laki.

### Naive Estimation
Naive estimation digunakan untuk menghitung estimasi awal tingkat kepuasan mahasiswa tanpa melakukan pembobotan terhadap data responden.

Berdasarkan hasil analisis menggunakan script R dengan

diperoleh:
- Jumlah responden puas = 25 orang
- Total responden = 30 orang

Hasil naive estimation menunjukkan 83% mahasiswa statistika puas terhadap pelayanan akademik di FMIPA Unram, tetapi estimasi berpotensi bias karena komposisi sampel tidak mewakili populasi 

### Weighting Sederhana
Weighting sederhana dilakukan untuk menyesuaikan distribusi sampel agar lebih mendekati kondisi populasi sebenarnya berdasarkan jenis kelamin.

Dalam penelitian ini diasumsikan bahwa proporsi populasi laki-laki dan perempuan masing-masing sebesar 50%. Setelah dilakukan pembobotan menggunakan script R 

diperoleh weighted estimation sebesar 80%.

Hasil ini menunjukkan adanya sedikit perubahan dibandingkan naive estimation sebelumnya. Weighting sederhana membantu mengurangi potensi bias akibat ketidakseimbangan jumlah responden laki-laki dan perempuan dalam sampel penelitian.

### Perbandingan Estimasi
Perbandingan hasil estimasi dilakukan untuk melihat perbedaan antara naive estimation dan weighted estimation.

| Metode Estimasi | Hasil |
|---|---|
| Naive Estimation | 83% |
| Weighted Estimation | 80% |

<img width="1896" height="902" alt="Grafik distribusi perbandingan estimasi" src="https://github.com/user-attachments/assets/faa07e74-de87-4c51-9ae9-44068422bf4f" />

Hasil analisis menunjukkan bahwa naive estimation menghasilkan tingkat kepuasan sebesar 83%, sedangkan weighted estimation menghasilkan tingkat kepuasan sebesar 80%. Perbedaan hasil yang relatif kecil menunjukkan bahwa distribusi sampel responden sudah cukup mendekati kondisi populasi sebenarnya.

## Kesimpulan
Berdasarkan hasil analisis non-probability sampling pada survei online mengenai tingkat kepuasan mahasiswa statistika terhadap pelayanan administrasi akademik di FMIPA Universitas Mataram, diperoleh bahwa mayoritas responden dalam penelitian ini merasa puas terhadap pelayanan administrasi akademik yang diberikan.

Distribusi responden menunjukkan bahwa responden perempuan lebih mendominasi dibandingkan responden laki-laki. Hasil naive estimation menunjukkan tingkat kepuasan sebesar 83%, sedangkan setelah dilakukan weighting sederhana berdasarkan jenis kelamin diperoleh estimasi sebesar 80%.

Perbedaan hasil yang relatif kecil menunjukkan bahwa distribusi sampel sudah cukup mendekati kondisi populasi sebenarnya. Weighting sederhana membantu mengurangi potensi bias sehingga hasil estimasi menjadi lebih representatif.

