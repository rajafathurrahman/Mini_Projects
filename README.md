# Mini_Projects
Anda diberikan tugas untuk mengembangkan sistem analisis data untuk perusahaan atau process penelitian. 
Pilihlah data yang melibatkan penjualan produk atau proses penelitian dan rancanglah seluruh proses dari desain data warehouse hingga visualisasi 
untuk memberikan wawasan.
1. **Desain Data Warehouse** : Pilih skenario bisnis (misalnya, penjualan ritel) dan rancang skema data warehouse yang mencakup tabel fakta untuk transaksi penjualan dan tabel dimensi untuk produk, pelanggan, dan waktu. 
   - Skenario Bisnis: Penjualan Ritel
   - Skema Data Warehouse:
     - Tabel Fakta (Transaksi Penjualan):
       | ID Transaksi | Tanggal       | ID Pelanggan | ID Produk | Jumlah | Total Harga |
       |--------------|---------------|--------------|-----------|--------|-------------|
       | 1            | 2023-01-01    | 101          | 501       | 3      | 150.00      |
       | 2            | 2023-01-02    | 102          | 502       | 2      | 90.00       |
       | 3            | 2023-01-02    | 103          | 501       | 1      | 50.00       |
       | ...          | ...           | ...          | ...       | ...    | ...         |
     - Tabel Dimensi (Pelanggan):
       | ID Pelanggan | Nama Pelanggan | Kota         |
       |--------------|----------------|--------------|
       | 101          | John Doe       | Jakarta      |
       | 102          | Jane Smith     | Surabaya     |
       | 103          | Bob Johnson    | Bandung      |
       | ...          | ...            | ...          |
     - Tabel Dimensi (Produk):
       | ID Produk | Nama Produk     | Kategori     |
       |-----------|-----------------|--------------|
       | 501       | Laptop          | Elektronik   |
       | 502       | Sepatu Olahraga | Fashion      |
       | 503       | Buku            | Buku         |
       | ...       | ...             | ...          |
2. **ETL Process** : Gambarkan langkah-langkah ETL untuk mengambil data penjualan harian dari sumber eksternal (misalnya, file CSV), mentransformasikannya untuk normalisasi format tanggal dan pengolahan data lainnya, dan memuatnya ke dalam data warehouse.

   contoh :
   ![alt text](https://github.com/rajafathurrahman/Mini_Projects/blob/main/Blank%20diagram%20(3).png)
3. **OLAP Process** : Tentukan pertanyaan analitis spesifik yang dapat dijawab melalui OLAP. Contohnya: "Bagaimana tren penjualan produk tertentu selama dua kuartal terakhir?" Gambarkan query OLAP untuk menjawab pertanyaan tersebut menggunakan data di data warehouse.

   contoh : dari link [query untuk OLAP](https://github.com/rajafathurrahman/Mini_Projects/tree/main/SQL) query untuk melakukan proses OLAP seperti RANK(), ROLLUP dan lainya.

### Optional
**Visualisasi** : Pilih alat visualisasi data (misalnya, Tableau) dan buat dashboard yang menyajikan informasi yang berguna untuk manajemen. Termasuk grafik garis untuk menunjukkan tren penjualan, diagram batang untuk produk terlaris, dan peta geografis untuk menampilkan distribusi pelanggan.

contoh : ini merupakan tools untuk visualisasi di webapps [Streamlit](https://ozgunhaznedar-swiss-renewable-energy-app-srcmain-p0dfd5.streamlit.app/)

## Tugas !! 
Buatlah process untuk sistem datawarehouse dari design, ETL hinggal visualisasi dan tugas dapat dibuat dalam bentuk **dokumntasi github**, **artikel Medium**, **Video youtube** atau sejenisnya yang dapat menerangkan proses design, ETL dan visualisasi dari datawarehouse .

## Data :
ini adalah data yang dapat diguakan untuk proses datawarehouse Design

[edmonton](https://data.edmonton.ca/dataset/Water-Levels-and-Flows-Monitoring-Station-List/4xiv-jrdx)

[data penjualan dan transaksi](https://github.com/rajafathurrahman/Mini_Projects/tree/main/data)
