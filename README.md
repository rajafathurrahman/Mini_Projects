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
3. **OLAP Process** : Tentukan pertanyaan analitis spesifik yang dapat dijawab melalui OLAP. Contohnya: "Bagaimana tren penjualan produk tertentu selama dua kuartal terakhir?" Gambarkan query OLAP untuk menjawab pertanyaan tersebut menggunakan data di data warehouse.
4. **Visualisasi** : Pilih alat visualisasi data (misalnya, Tableau) dan buat dashboard yang menyajikan informasi yang berguna untuk manajemen. Termasuk grafik garis untuk menunjukkan tren penjualan, diagram batang untuk produk terlaris, dan peta geografis untuk menampilkan distribusi pelanggan.
