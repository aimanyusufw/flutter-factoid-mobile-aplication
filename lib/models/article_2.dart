import 'package:equatable/equatable.dart';

class Nasional extends Equatable {
  final int id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String ImageUrl;
  final int views;
  final DateTime createdAt;

  const Nasional(
      {required this.id,
        required this.title,
        required this.subtitle,
        required this.body,
        required this.author,
        required this.authorImageUrl,
        required this.category,
        required this.ImageUrl,
        required this.views,
        required this.createdAt});

  static List<Nasional> articles = [
    Nasional(
      id: 1,
      title: "Ganjar Sowan ke Tokoh Agama Banten Embay Mulya Syarief.",
      subtitle:
      "Bakal calon presiden (Bacapres) dari PDI Perjuangan (PDI-P) Ganjar Pranowo bersilahturahmi dengan tokoh agama Banten Kyai Embay Mulya Syarief pada Minggu (28/5/2023).",
      body:
      'Bakal calon presiden (Bacapres) dari PDI Perjuangan (PDI-P) Ganjar Pranowo bersilahturahmi dengan tokoh agama Banten Kyai Embay Mulya Syarief pada Minggu (28/5/2023).Ganjar turut didampingi oleh Ketua Tim Koordinasi Relawan Ganjar Pranowo for President 2024, Ahmad Basarah.Berdasarkan pantauan Kompas.com, Ganjar yang mengenakan pakaian koko putih tiba di kediaman Embay pukul 09.00 WIB.Embay pun menyambut langsung kedatangan Ganjar dan Basarah di halaman depan rumah.Embay mempersilakan Ganjar dan Basarah untuk masuk ke dalam rumahnya. Pertemuan itu berlangsung tertutup di dalam kediaman Embay.Sekitar 20 menit berselang, Embay mempersilakan Ganjar dan Basarah untuk sarapan pagi di saung depan rumah.Sajian yang dihidangkan mulai dari jajanan pasar hingga buah-buahan.Embay juga mengajak Ganjar untuk mencicipi nasi uduk serta empal daging khas Banten."Silakan Pak Ganjar. Kalau disini makan nasi uduk harus pakai empal," ucap Embay."Terima kasih Pak," kata Ganjar.Bakal calon presiden (Bacapres) dari PDI Perjuangan (PDI-P) Ganjar Pranowo bersilahturahmi dengan tokoh agama Banten Kyai Embay Mulya Syarief pada Minggu (28/5/2023).Ganjar turut didampingi oleh Ketua Tim Koordinasi Relawan Ganjar Pranowo for President 2024, Ahmad Basarah.Berdasarkan pantauan Kompas.com, Ganjar yang mengenakan pakaian koko putih tiba di kediaman Embay pukul 09.00 WIB.Embay pun menyambut langsung kedatangan Ganjar dan Basarah di halaman depan rumah.Embay mempersilakan Ganjar dan Basarah untuk masuk ke dalam rumahnya. Pertemuan itu berlangsung tertutup di dalam kediaman Embay.Sekitar 20 menit berselang, Embay mempersilakan Ganjar dan Basarah untuk sarapan pagi di saung depan rumah.Sajian yang dihidangkan mulai dari jajanan pasar hingga buah-buahan.Embay juga mengajak Ganjar untuk mencicipi nasi uduk serta empal daging khas Banten."Silakan Pak Ganjar. Kalau disini makan nasi uduk harus pakai empal," ucap Embay."Terima kasih Pak," kata Ganjar.',
      author: "Aiman yusuf.",
      authorImageUrl:
      "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
      category: "Pengetahuan",
      ImageUrl:
      "https://asset.kompas.com/crops/L4bFdurirQKueq65aNb8mnYZkLw=/0x0:0x0/750x500/data/photo/2023/05/28/6472cb9cd2b35.jpg",
      views: 2321,
      createdAt: DateTime.now().subtract(const Duration(hours: 3)),
    ),
    Nasional(
        id: 2,
        title: "Gerilya Cak Imin dan Bisik-bisik Isi Pertemuan Prabowo-SBY",
        subtitle:
        "Selamat pagi untuk seluruh sobat Kompas.com. Kami mencoba mengawali Senin (22/5/2023) ini dengan merangkum sejumlah kabar terkini dari dunia politik Tanah Air sepekan yang lalu.",
        body:
        'Selamat pagi untuk seluruh sobat Kompas.com. Kami mencoba mengawali Senin (22/5/2023) ini dengan merangkum sejumlah kabar terkini dari dunia politik Tanah Air sepekan yang lalu. Pada sepekan yang lalu terdapat pertemuan sejumlah tokoh politik Tanah Air. Kedua pentolan dari Koalisi Kebangkitan untuk Indonesia Raya (KKIR) yakni Ketua Umum Partai Gerindra Prabowo Subianto dan Ketua Umum Partai Kebangkitan Bangsa (PKB) Muhaimin Iskandar terus "bergerilya" dengan menemui sejumlah tokoh. KKIR saat ini mengusung Prabowo sebagai bakal calon presiden 2024.Muhaimin atau yang kerap disapa Cak Imin itu berkunjung ke rumah dinas Wakil Presiden Maruf Amin di kawasan Menteng, Jakarta Pusat, pada Senin (15/5/2023). Obrolan keduanya membahas seputar persiapan menjelang ajang pemilihan presiden (Pilpres) 2024 mendatang. Lawatan Cak Imin ke Maruf disebut-sebut sebagai bentuk penghormatan dan silaturahmi politikus kepada ulama yang dihormati.Selamat pagi untuk seluruh sobat Kompas.com. Kami mencoba mengawali Senin (22/5/2023) ini dengan merangkum sejumlah kabar terkini dari dunia politik Tanah Air sepekan yang lalu. Pada sepekan yang lalu terdapat pertemuan sejumlah tokoh politik Tanah Air. Kedua pentolan dari Koalisi Kebangkitan untuk Indonesia Raya (KKIR) yakni Ketua Umum Partai Gerindra Prabowo Subianto dan Ketua Umum Partai Kebangkitan Bangsa (PKB) Muhaimin Iskandar terus "bergerilya" dengan menemui sejumlah tokoh. KKIR saat ini mengusung Prabowo sebagai bakal calon presiden 2024.Muhaimin atau yang kerap disapa Cak Imin itu berkunjung ke rumah dinas Wakil Presiden Maruf Amin di kawasan Menteng, Jakarta Pusat, pada Senin (15/5/2023). Obrolan keduanya membahas seputar persiapan menjelang ajang pemilihan presiden (Pilpres) 2024 mendatang. Lawatan Cak Imin ke Maruf disebut-sebut sebagai bentuk penghormatan dan silaturahmi politikus kepada ulama yang dihormati.',
        author: "Aiman yusuf.",
        authorImageUrl:
        "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
        category: "Politic",
        ImageUrl:
        "https://asset.kompas.com/crops/8S55Ec3Fr4xXD3zvCaKKOiSEHbY=/0x0:0x0/750x500/data/photo/2023/05/17/64645e2abb6fc.jpg",
        views: 1541,
        createdAt: DateTime.now().subtract(const Duration(hours: 4))),
    Nasional(
        id: 3,
        title:
        "Prabowo dan Muhaimin Berencana Kunjungi Megawati, Sekjen PDI-P Singgung Tugas Puan Maharani",
        subtitle:
        "Sekretaris Jenderal PDI-P Hasto Kristiyanto mengungkit tugas Ketua DPP PDI-P Puan Maharani untuk melakukan safari politik ke partai lain.",
        body:
        'Sekretaris Jenderal PDI-P Hasto Kristiyanto mengungkit tugas Ketua DPP PDI-P Puan Maharani untuk melakukan safari politik ke partai lain. Hal ini disampaikan ketika ditanya rencana pertemuan antara Ketua Umum Partai Gerindra Prabowo Subianto, Ketua Umum PKB Muhaimin Iskandar dengan Ketum PDI-P Megawati Soekarnoputri. "Ya proses dialog terus menerus dilakukan. Kan, Ibu Mega juga menugaskan Mbak Puan Maharani," kata Hasto ditemui di Jakarta, Sabtu (20/5/2023).Hasto menilai sosok Puan tepat untuk melakukan komunikasi politik dengan para pimpinan partai. Sebab, Puan juga merupakan ketua DPR RI yang kerap komunikasi dengan fraksi-fraksi partai lain di parlemen. Alhasil, komunikasi politik dinilai wajar juga dilakukan oleh Puan. "Beliau (Megawati) menugaskan Ketua DPR yang sangat piawai dalam melakukan komunikasi politik," ujar Hasto. Namun, PDI-P belum mengetahui kapan jadwal safari politik Puan ke depannya. Pasalnya, PDI-P kini fokus menyiapkan pelaksanaan Rapat Kerja Nasional (Rakernas) yang bakal digelar pada 6-8 Juni mendatang."Di luar itu PDI-P juga dalam konteks melakukan evaluasi atas seluruh tahapan pencalonan anggota legislatif dan juga mengkonsolidasikan seluruh jajaran partai, dalam rangka pemenangan pemilu tahun 2024, termasuk pemenangan Pak Ganjar Pranowo," kata Hasto. "Maka, kami akan mengadakan rapat kerja nasional yang ketiga pada tanggal 6 sampai 8 Juni," ucap dia. Sekadar informasi, sejauh ini ada dua Ketum partai yang berencana menemui Megawati, yaitu Prabowo Subianto dan Muhaimin Iskandar. Prabowo Subianto menyampaikan hal itu usai menemui Presiden ke-6 RI Susilo Bambang Yudhoyono (SBY). Sementara, Muhaimin mengatakan hal serupa usai menemui Wakil Presiden ke-6 RI Try Sutrisno pada hari ini.',
        author: "Aiman yusuf.",
        authorImageUrl:
        "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
        category: "Pengetahuan",
        ImageUrl:
        "https://asset.kompas.com/crops/0Oj2YLKtfK3_hcanoBJ15ANeQRI=/0x0:780x520/750x500/data/photo/2023/04/29/644cbe44dae61.jpg",
        views: 143,
        createdAt: DateTime.now().subtract(const Duration(hours: 6))),
    Nasional(
        id: 4,
        title: "Dibentuk Mahfud MD, Ini Susunan Tim Percepatan Reformasi Hukum",
        subtitle:
        "Menteri Koordinator Bidang Politik, Hukum, dan Keamanan (Menko Polhukam) Mahfud MD membentuk Tim Percepatan Reformasi Hukum dengan menerbitkan Surat Keputusan Menko Polhukam Nomor 63 Tabun 2023 tentang Tim Percepatan Reformasi Hukum.",
        body:
        'Menteri Koordinator Bidang Politik, Hukum, dan Keamanan (Menko Polhukam) Mahfud MD membentuk Tim Percepatan Reformasi Hukum dengan menerbitkan Surat Keputusan Menko Polhukam Nomor 63 Tabun 2023 tentang Tim Percepatan Reformasi Hukum. Berdasarkan SK tersebut, susunan keanggotaan Tim Percepatan Reformasi Hukum terdiri atas pengarah; ketua, wakil ketua, dan sekretaris; serta kelompok kerja. SK ini mengatur bahwa posisi pengarah diisi secara ex officio oleh Menko Polhukam, sedangkan ketuanya adalah Deputi Bidang Koordinasi Hukum dan Hak Asasi Manusia (HAM) Kemenko Polhukam secara ex officio. Posisi wakil ketua diisi oleh mantan pimpinan KPK Laode M Syarif, sedangkan sekretaris tim ini adalah Sekretaris Deputi Bidang Koordinasi Hukum dan HAM Kemenko Polhukam secara ex officio. Adapun, terdapat empat kelompok kerja dalam susunan Tim Percepatan Reformasi Hukum.Keempat kelompok kerja itu adalah Kelompok Kerja Reformasi Lembaga Peradilan dan Penegakan Hukum, Kelompok Kerja Reformasi Hukum Sektor Agraria dan Sumber Daya Alam, Kelompok Kerja Pencegahan dan Pemberantasan Korupsi, serta Kelompok Kerja Reformasi Sektor Peraturan Perundangundangan. Kelompok-kelompok kerja itu diketuai dan beranggotakan oleh para tokoh berlatar belakang hukum, di samping diisi juga oleh pejabat Kemenko Polhukam. Dalam SK ini, diatur bahwa kelompok kerja memiliki tiga tugas. Pertama, menyusun dan mengusulkan agenda prioritas percepatan reformasi hukum kepada Ketua Tim. Kedua, mengevaluasi pelaksanaan agenda prioritas percepatan reformasi hukum. Ketiga, melaporkan hasil evaluasi pelaksanaan agenda prioritas percepatan reformasi hukum kepada Ketua Tim untuk disampaikan kepada Pengarah.Menteri Koordinator Bidang Politik, Hukum, dan Keamanan (Menko Polhukam) Mahfud MD membentuk Tim Percepatan Reformasi Hukum dengan menerbitkan Surat Keputusan Menko Polhukam Nomor 63 Tabun 2023 tentang Tim Percepatan Reformasi Hukum. Berdasarkan SK tersebut, susunan keanggotaan Tim Percepatan Reformasi Hukum terdiri atas pengarah; ketua, wakil ketua, dan sekretaris; serta kelompok kerja. SK ini mengatur bahwa posisi pengarah diisi secara ex officio oleh Menko Polhukam, sedangkan ketuanya adalah Deputi Bidang Koordinasi Hukum dan Hak Asasi Manusia (HAM) Kemenko Polhukam secara ex officio. Posisi wakil ketua diisi oleh mantan pimpinan KPK Laode M Syarif, sedangkan sekretaris tim ini adalah Sekretaris Deputi Bidang Koordinasi Hukum dan HAM Kemenko Polhukam secara ex officio. Adapun, terdapat empat kelompok kerja dalam susunan Tim Percepatan Reformasi Hukum.Keempat kelompok kerja itu adalah Kelompok Kerja Reformasi Lembaga Peradilan dan Penegakan Hukum, Kelompok Kerja Reformasi Hukum Sektor Agraria dan Sumber Daya Alam, Kelompok Kerja Pencegahan dan Pemberantasan Korupsi, serta Kelompok Kerja Reformasi Sektor Peraturan Perundangundangan. Kelompok-kelompok kerja itu diketuai dan beranggotakan oleh para tokoh berlatar belakang hukum, di samping diisi juga oleh pejabat Kemenko Polhukam. Dalam SK ini, diatur bahwa kelompok kerja memiliki tiga tugas. Pertama, menyusun dan mengusulkan agenda prioritas percepatan reformasi hukum kepada Ketua Tim. Kedua, mengevaluasi pelaksanaan agenda prioritas percepatan reformasi hukum. Ketiga, melaporkan hasil evaluasi pelaksanaan agenda prioritas percepatan reformasi hukum kepada Ketua Tim untuk disampaikan kepada Pengarah.',
        author: "Aiman yusuf.",
        authorImageUrl:
        "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
        category: "Pengetahuan",
        ImageUrl:
        "https://asset.kompas.com/crops/GgONNsEzJX0dbiC_OxRZnA1HouM=/0x0:0x0/750x500/data/photo/2023/05/22/646afc9ebfe5f.jpg",
        views: 981,
        createdAt: DateTime.now().subtract(const Duration(hours: 7))),
    Nasional(
        id: 5,
        title:
        "Hakim Agung Tersangka Korupsi, Mahfud MD Putar Otak untuk Reformasi Hukum Sesuai Perintah Jokowi",
        subtitle:
        "Menteri Koordinator Politik Hukum dan Keamanan (Menko Polhukam) Mahfud MD menyatakan segera merumuskan cara terkait permintaan Presiden Joko Widodo (Jokowi) untuk melakukan reformasi di sektor hukum peradilan",
        body:
        'Menteri Koordinator Politik Hukum dan Keamanan (Menko Polhukam) Mahfud MD menyatakan segera merumuskan cara terkait permintaan Presiden Joko Widodo (Jokowi) untuk melakukan reformasi di sektor hukum peradilan, usai Hakim Agung Sudrajad Dimyati menjadi tersangka suap. Mahfud mengatakan, upaya untuk melakukan reformasi di bidang peradilan harus sesuai dengan aturan yang dibolehkan dalam Undang-Undang Dasar 1945. “Saya akan segera berkordinasi untuk merumuskan formula reformasi yang memungkinkan secara konstitusi dan tata hukum kita itu. Presiden sangat serius tentang ini,” kata Mahfud, dikutip dari akun Instagram-nya, @mohmahfudmd, Selasa (27/9/2022).Mahfud mengatakan, pemerintah sebagai lembaga eksekutif tidak bisa langsung mencampuri MA yang merupakan lembaga yudikatif. Mahfud menyebut, MA selalu berdalil bahwa hakim itu merdeka dan tak bisa dicampuri. “Kami tidak bisa masuk ke MA karena beda kamar, kami eksekutif sedang mereka yudikatif,” ujar dia. Dalam upaya pemberantasan korupsi, Mahfud menilai, Kejaksaan Agung selama ini sudah bekerja keras dan berhasil menunjukkan kinerja positifnya. Begitu juga dengan KPK. “Tetapi kerap kali usaha-usaha yang bagus itu gembos di MA. Ada koruptor yang dibebaskan, ada koruptor yang dikorting hukumannya dengan diskon besar,” kata dia.Mahfud: Ini Industri Hukum Gila-gilaan “Eh tiba-tiba muncul kasus Hakim Agung Sudrajat Dimyati dengan modus perampasan aset koperasi melalui pemailitan. Ini industri hukum gila-gilaan yang sudah sering saya peringatkan di berbagai kesempatan,” ucap dia.Sebelumnya Presiden Jokowi mengatakan, reformasi di bidang peradilan penting dilakukan setelah Sudrajad Dimyati ditetapkan sebagai tersangka kasus dugaan korupsi oleh KPK. "Saya lihat ada urgensi sangat penting untuk mereformasi bidang hukum kita dan itu sudah saya perintahkan ke Menko Polhukam, jadi silakan tanyakan ke Menko Polhukam," kata Jokowi di Pangkalan Udara Halim Perdanakusuma, Jakarta, Senin (26/9/2022). Jokowi menambahkan, terkait kasus korupsi yang menjerat Sudrajad, ia akan menunggu proses hukum yang dilakukan oleh KPK. "Yang paling penting kita tunggu sampai selesai proses hukum yang ada di KPK," ujar Jokowi. Sebelumnya, Ketua KPK Firli Bahuri mengatakan, dalam kasus itu penyidik menetapkan Sudrajad dan sejumlah pegawai MA sebagai tersangka dari hasil operasi tangkap tangan (OTT) itu digelar di Jakarta, Bekasi, dan Semarang pada Kamis (22/9/2022) hingga Jumat (23/9/2022).',
        author: "Aiman yusuf.",
        authorImageUrl:
        "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
        category: "Pengetahuan",
        ImageUrl:
        "https://asset.kompas.com/crops/zfY6IZsk09SUBOLYPd2GbRHG0eY=/0x0:0x0/750x500/data/photo/2022/09/27/633270c879df9.jpeg",
        views: 267,
        createdAt: DateTime.now().subtract(const Duration(hours: 8)))
  ];

  @override
  List<Object?> get props => [
    id,
    title,
    subtitle,
    body,
    author,
    authorImageUrl,
    category,
    ImageUrl,
    views,
    createdAt,
  ];
}