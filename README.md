# nonprobability-survey

# Analisis Tingkat Kepuasan Mahasiswa terhadap Pelayanan Administrasi Akademik di FMIPA Universitas Mataram

## Latar Belakang
Pelayanan administrasi akademik merupakan salah satu aspek penting dalam menunjang kelancaran kegiatan perkuliahan di perguruan tinggi. Pelayanan yang baik dapat membantu mahasiswa dalam memperoleh informasi akademik, mengurus dokumen perkuliahan, serta memenuhi berbagai kebutuhan administrasi dengan lebih mudah dan cepat. Sebaliknya, pelayanan yang kurang optimal dapat menyebabkan hambatan dalam proses akademik mahasiswa.

Kepuasan mahasiswa terhadap pelayanan administrasi akademik dapat digunakan sebagai salah satu indikator kualitas pelayanan yang diberikan oleh institusi pendidikan. Oleh karena itu, evaluasi terhadap pelayanan administrasi akademik perlu dilakukan agar pihak fakultas dapat mengetahui kelebihan maupun kekurangan pelayanan yang telah diberikan.

FMIPA Universitas Mataram sebagai salah satu fakultas dengan jumlah mahasiswa yang cukup banyak tentunya memerlukan pelayanan administrasi akademik yang baik dan responsif. Untuk mengetahui tingkat kepuasan mahasiswa terhadap pelayanan administrasi akademik di FMIPA Universitas Mataram, dilakukan survei online menggunakan Google Form. Penelitian ini menggunakan teknik non probability sampling dengan metode convenience sampling.

## Tujuan
Tujuan dari penelitian ini adalah:
- Mengetahui tingkat kepuasan mahasiswa terhadap pelayanan administrasi akademik di FMIPA Universitas Mataram melalui survei online.
- Mengetahui distribusi responden berdasarkan jenis kelamin.
- Menghitung hasil naive estimation terhadap tingkat kepuasan mahasiswa.
- Melakukan weighting sederhana berdasarkan jenis kelamin untuk memperoleh hasil estimasi yang lebih representatif.

## Metode
Penelitian ini merupakan penelitian kuantitatif dengan pendekatan survei online. Data diperoleh melalui penyebaran kuesioner menggunakan Google Form kepada mahasiswa FMIPA Universitas Mataram.

Teknik sampling yang digunakan adalah non probability sampling dengan metode convenience sampling, yaitu pengambilan sampel berdasarkan kemudahan memperoleh responden. Jumlah responden dalam penelitian ini sebanyak 30 mahasiswa.

Pengolahan data dilakukan menggunakan bahasa pemrograman R dengan bantuan package `readxl`. Analisis dilakukan menggunakan script pada file `analisis.R`.

Tahapan analisis data meliputi:
1. Import data survei dari file Excel.
2. Analisis deskriptif distribusi responden berdasarkan jenis kelamin.
3. Pembuatan tabel distribusi frekuensi dan persentase responden.
4. Pembuatan grafik distribusi responden menggunakan diagram batang dan pie chart.
5. Perhitungan naive estimation untuk memperoleh estimasi awal tingkat kepuasan mahasiswa.
6. Perhitungan weighting sederhana berdasarkan jenis kelamin untuk mengurangi bias sampel.
7. Perbandingan hasil naive estimation dan weighted estimation menggunakan grafik batang.

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
Visualisasi data dilakukan menggunakan pie chart untuk memperlihatkan distribusi responden berdasarkan jenis kelamin. Grafik menunjukkan bahwa jumlah responden perempuan lebih mendominasi dibandingkan responden laki-laki.

### Naive Estimation
Naive estimation digunakan untuk menghitung estimasi awal tingkat kepuasan mahasiswa tanpa melakukan pembobotan terhadap data responden.

Berdasarkan hasil analisis menggunakan script R, diperoleh:
- Jumlah responden puas = 25 orang
- Total responden = 30 orang

Hasil naive estimation menunjukkan tingkat kepuasan mahasiswa sebesar 83%.

### Weighting Sederhana
Weighting sederhana dilakukan untuk menyesuaikan distribusi sampel agar lebih mendekati kondisi populasi sebenarnya berdasarkan jenis kelamin.

Dalam penelitian ini diasumsikan bahwa proporsi populasi laki-laki dan perempuan masing-masing sebesar 50%. Setelah dilakukan pembobotan menggunakan script R, diperoleh weighted estimation sebesar 80%.

Hasil ini menunjukkan adanya sedikit perubahan dibandingkan naive estimation sebelumnya. Weighting sederhana membantu mengurangi potensi bias akibat ketidakseimbangan jumlah responden laki-laki dan perempuan dalam sampel penelitian.

### Perbandingan Estimasi
Perbandingan hasil estimasi dilakukan untuk melihat perbedaan antara naive estimation dan weighted estimation.

| Metode Estimasi | Hasil |
|---|---|
| Naive Estimation | 83% |
| Weighted Estimation | 80% |

Hasil analisis menunjukkan bahwa naive estimation menghasilkan tingkat kepuasan sebesar 83%, sedangkan weighted estimation menghasilkan tingkat kepuasan sebesar 80%. Perbedaan hasil yang relatif kecil menunjukkan bahwa distribusi sampel responden sudah cukup mendekati kondisi populasi sebenarnya.

## Kesimpulan
Berdasarkan hasil analisis non-probability sampling pada survei online mengenai tingkat kepuasan mahasiswa terhadap pelayanan administrasi akademik di FMIPA Universitas Mataram, diperoleh bahwa mayoritas mahasiswa merasa puas terhadap pelayanan administrasi akademik yang diberikan.

Distribusi responden menunjukkan bahwa responden perempuan lebih mendominasi dibandingkan responden laki-laki. Hasil naive estimation menunjukkan tingkat kepuasan sebesar 83%, sedangkan setelah dilakukan weighting sederhana berdasarkan jenis kelamin diperoleh estimasi sebesar 80%.

Perbedaan hasil yang relatif kecil menunjukkan bahwa distribusi sampel sudah cukup mendekati kondisi populasi sebenarnya. Weighting sederhana membantu mengurangi potensi bias sehingga hasil estimasi menjadi lebih representatif.

