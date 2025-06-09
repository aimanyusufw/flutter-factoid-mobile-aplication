import 'package:equatable/equatable.dart';

class Article extends Equatable {
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

  const Article(
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

  static List<Article> articles = [
    Article(
        id: 1,
        title:
        "Disdikbud Kendal Gelar Hasil karya Sekolah Penggerak Tahun 2023",
        subtitle:
        "Gunung Kidul- Dinas Komunikasi dan Informatika (Diskominfo) Kabupaten Kendal menggelar kegiatan Pers Gathering Tahun 2023 di Kabupaten Gunung Kidul dengan tema ",
        body:
        'Gunung Kidul- Dinas Komunikasi dan Informatika (Diskominfo) Kabupaten Kendal menggelar kegiatan Pers Gathering Tahun 2023 di Kabupaten Gunung Kidul dengan tema "Kemitraan Pers Dalam Mendukung Program Pembangunan Pemerintah Daerah", Jumat (26/05/2023) di Hotel Santika Gunung Kidul.Acara dihadiri oleh Plt. Kepala Diskominfo Kendal, Rini Utami, S.H., M.A., Asisten Ekonomi dan Pembangunan Sekda Kendal, Wiwit Andariyono, S.STP, Plt. Kepala Diskominfo Gunung Kidul, Kelik Yuliantoro, dan Ketua PWI Gunung Kidul, Indar Widodo sekaligus sebagai narasumber, serta diikuti oleh rekan wartawan Pemkab Kendal.Kepala Bidang Informasi dan Komunikasi Publik (IKP) Diskominfo Kendal, Ahmad Syarul Falah dalam laporannya menjelaskan, bahwa kegiatan ini dilaksanakan selama dua hari, mulai tanggal 26-27 Mei Kabupaten Gunung Kidul."Adapun tujuan dilaksanakannya kegiatan Pers Gathering ini untuk menjalin hubungan yang harmonis antara wartawan liputan daerah Kabupaten Kendal dengan Pemkab Kendal, dalam hal ini Dinas Kominfo Kabupaten Kendal," ujar Syarul Falah.Lebih lanjut, Kabid IKP Kendal juga mengatakan, Pers Gathering juga sebagai strategi media relation yang dapat digunakan sebagai sarana pertemuan untuk menjaga dan mempererat hubungan dengan media atau para wartawan. Selain itu, juga sebagai bentuk evaluasi kontribusi pemberitaan di wilayah Kabupaten Kendal.Dalam sambutannya, Plt. Kepala Diskominfo Kendal, Rini Utami Utami menyampaikan, bahwa kegiatan ini merupakan kegiatan rutin dilaksanakan setiap tahun bersama rekan wartawan mitra Pemkab Kendal."Kami ucapkan terima kasih kepada Pemkab Gunung Kidul dan rekan wartawan dari Gunung Kidul yang telah menyambut dengan baik kegiatan ini, dengan harapan bisa saling berbagi informasi terkait dengan kemitraan pers untuk pembagunan daerah yang lebih baik lagi," tutur Rini Utami.Ucapan terima kasih juga disampaikan oleh Plt. Kepala Diskominfo Kendal kepada rekan wartawan Kabupaten Kendal, yang mana selama ini sudah berkontribusi untuk pembangunan di Kabupaten Kendal, tentunya dengan memberikan informasi tentang pembangunan-pembangunan Kabupaten Kendal kepada masyarakat.Selain itu, Rini Utami juga berharap, kemitraan yang selama ini sudah dijalin dengan baik, semoga kedepan akan semakin lebih baik lagi.Sementara itu, Plt. Kepala Diskominfo Gunung Kidul, Kelik Yuliantoro menyampaikan selamat datang di Gunung Kidul, dan berharap semoga dengan adanya kegiatan ini bisa saling menguatkan terutama dengan pemberitaan pembangunan di daerahnya masing-masing.Sedangkan, Ketua PWI Gunung Kidul, Indar Widodo menyampaikan, bahwa membangun kemitraan antara wartawan dengan Pemerintah Daerah, kuncinya hanya satu, yaitu duduk harus sejajar dan koordinasi dengan baik untuk memberitakan kemajuan pemerintah di daerahnya masing-masing.Acara dilanjut dengan pemaparan materi dari Kepala Diskominfo Gunung Kidul dan Ketua PWI Gunung Kidul, Indar Widodo. Kemudian komunikasi dua arah dengan saling tanya jawab antara peserta Pers Gathering dengan narasumber.Dalam kegiatan tersebut juga dilakukan pengarahan dari Asisten Ekonomi dan Pembangunan Sekda Kendal, Wiwit Andariyono, dan acara diskusi bersama.',
        author: "Aiman yusuf",
        authorImageUrl:
        "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
        category: "Politic",
        ImageUrl:
        "https://www.kendalkab.go.id/images/konten/berita/20230525001.jpg",
        views: 16,
        createdAt: DateTime.now().subtract(const Duration(hours: 4))),
    Article(
      id: 2,
      title:
      "Diskominfo Kendal Menggelar Kegiatan Pers Gathering di Gunung Kidul",
      subtitle:
      "'Kemitraan Pers Dalam Mendukung Program Pembangunan Pemerintah Daerah', Jumat (26/05/2023) di Hotel Santika Gunung Kidul.Acara dihadiri oleh Plt",
      body:
      'Gunung Kidul- Dinas Komunikasi dan Informatika (Diskominfo) Kabupaten Kendal menggelar kegiatan Pers Gathering Tahun 2023 di Kabupaten Gunung Kidul dengan tema "Kemitraan Pers Dalam Mendukung Program Pembangunan Pemerintah Daerah", Jumat (26/05/2023) di Hotel Santika Gunung Kidul.Acara dihadiri oleh Plt. Kepala Diskominfo Kendal, Rini Utami, S.H., M.A., Asisten Ekonomi dan Pembangunan Sekda Kendal, Wiwit Andariyono, S.STP, Plt. Kepala Diskominfo Gunung Kidul, Kelik Yuliantoro, dan Ketua PWI Gunung Kidul, Indar Widodo sekaligus sebagai narasumber, serta diikuti oleh rekan wartawan Pemkab Kendal.Kepala Bidang Informasi dan Komunikasi Publik (IKP) Diskominfo Kendal, Ahmad Syarul Falah dalam laporannya menjelaskan, bahwa kegiatan ini dilaksanakan selama dua hari, mulai tanggal 26-27 Mei Kabupaten Gunung Kidul."Adapun tujuan dilaksanakannya kegiatan Pers Gathering ini untuk menjalin hubungan yang harmonis antara wartawan liputan daerah Kabupaten Kendal dengan Pemkab Kendal, dalam hal ini Dinas Kominfo Kabupaten Kendal," ujar Syarul Falah.Lebih lanjut, Kabid IKP Kendal juga mengatakan, Pers Gathering juga sebagai strategi media relation yang dapat digunakan sebagai sarana pertemuan untuk menjaga dan mempererat hubungan dengan media atau para wartawan. Selain itu, juga sebagai bentuk evaluasi kontribusi pemberitaan di wilayah Kabupaten Kendal.Dalam sambutannya, Plt. Kepala Diskominfo Kendal, Rini Utami Utami menyampaikan, bahwa kegiatan ini merupakan kegiatan rutin dilaksanakan setiap tahun bersama rekan wartawan mitra Pemkab Kendal."Kami ucapkan terima kasih kepada Pemkab Gunung Kidul dan rekan wartawan dari Gunung Kidul yang telah menyambut dengan baik kegiatan ini, dengan harapan bisa saling berbagi informasi terkait dengan kemitraan pers untuk pembagunan daerah yang lebih baik lagi," tutur Rini Utami.Ucapan terima kasih juga disampaikan oleh Plt. Kepala Diskominfo Kendal kepada rekan wartawan Kabupaten Kendal, yang mana selama ini sudah berkontribusi untuk pembangunan di Kabupaten Kendal, tentunya dengan memberikan informasi tentang pembangunan-pembangunan Kabupaten Kendal kepada masyarakat.Selain itu, Rini Utami juga berharap, kemitraan yang selama ini sudah dijalin dengan baik, semoga kedepan akan semakin lebih baik lagi.Sementara itu, Plt. Kepala Diskominfo Gunung Kidul, Kelik Yuliantoro menyampaikan selamat datang di Gunung Kidul, dan berharap semoga dengan adanya kegiatan ini bisa saling menguatkan terutama dengan pemberitaan pembangunan di daerahnya masing-masing.Sedangkan, Ketua PWI Gunung Kidul, Indar Widodo menyampaikan, bahwa membangun kemitraan antara wartawan dengan Pemerintah Daerah, kuncinya hanya satu, yaitu duduk harus sejajar dan koordinasi dengan baik untuk memberitakan kemajuan pemerintah di daerahnya masing-masing.Acara dilanjut dengan pemaparan materi dari Kepala Diskominfo Gunung Kidul dan Ketua PWI Gunung Kidul, Indar Widodo. Kemudian komunikasi dua arah dengan saling tanya jawab antara peserta Pers Gathering dengan narasumber.Dalam kegiatan tersebut juga dilakukan pengarahan dari Asisten Ekonomi dan Pembangunan Sekda Kendal, Wiwit Andariyono, dan acara diskusi bersama.',
      author: "Aiman yusuf",
      authorImageUrl:
      "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
      category: "Pengetahuan",
      ImageUrl:
      "https://www.kendalkab.go.id/images/konten/berita/20230526001.jpg",
      views: 97,
      createdAt: DateTime.now().subtract(const Duration(hours: 3)),
    ),
    Article(
        id: 3,
        title: "Pemkab Kendal Terima Kunjungan Komisi IX DPR RI",
        subtitle:
        "Acara dihadiri oleh Plt. Kepala Diskominfo Kendal, Rini Utami, S.H., M.A., Asisten Ekonomi dan Pembangunan Sekda Kendal, Wiwit Andariyono, S.STP, Plt.",
        body:
        'Gunung Kidul- Dinas Komunikasi dan Informatika (Diskominfo) Kabupaten Kendal menggelar kegiatan Pers Gathering Tahun 2023 di Kabupaten Gunung Kidul dengan tema "Kemitraan Pers Dalam Mendukung Program Pembangunan Pemerintah Daerah", Jumat (26/05/2023) di Hotel Santika Gunung Kidul.Acara dihadiri oleh Plt. Kepala Diskominfo Kendal, Rini Utami, S.H., M.A., Asisten Ekonomi dan Pembangunan Sekda Kendal, Wiwit Andariyono, S.STP, Plt. Kepala Diskominfo Gunung Kidul, Kelik Yuliantoro, dan Ketua PWI Gunung Kidul, Indar Widodo sekaligus sebagai narasumber, serta diikuti oleh rekan wartawan Pemkab Kendal.Kepala Bidang Informasi dan Komunikasi Publik (IKP) Diskominfo Kendal, Ahmad Syarul Falah dalam laporannya menjelaskan, bahwa kegiatan ini dilaksanakan selama dua hari, mulai tanggal 26-27 Mei Kabupaten Gunung Kidul."Adapun tujuan dilaksanakannya kegiatan Pers Gathering ini untuk menjalin hubungan yang harmonis antara wartawan liputan daerah Kabupaten Kendal dengan Pemkab Kendal, dalam hal ini Dinas Kominfo Kabupaten Kendal," ujar Syarul Falah.Lebih lanjut, Kabid IKP Kendal juga mengatakan, Pers Gathering juga sebagai strategi media relation yang dapat digunakan sebagai sarana pertemuan untuk menjaga dan mempererat hubungan dengan media atau para wartawan. Selain itu, juga sebagai bentuk evaluasi kontribusi pemberitaan di wilayah Kabupaten Kendal.Dalam sambutannya, Plt. Kepala Diskominfo Kendal, Rini Utami Utami menyampaikan, bahwa kegiatan ini merupakan kegiatan rutin dilaksanakan setiap tahun bersama rekan wartawan mitra Pemkab Kendal."Kami ucapkan terima kasih kepada Pemkab Gunung Kidul dan rekan wartawan dari Gunung Kidul yang telah menyambut dengan baik kegiatan ini, dengan harapan bisa saling berbagi informasi terkait dengan kemitraan pers untuk pembagunan daerah yang lebih baik lagi," tutur Rini Utami.Ucapan terima kasih juga disampaikan oleh Plt. Kepala Diskominfo Kendal kepada rekan wartawan Kabupaten Kendal, yang mana selama ini sudah berkontribusi untuk pembangunan di Kabupaten Kendal, tentunya dengan memberikan informasi tentang pembangunan-pembangunan Kabupaten Kendal kepada masyarakat.Selain itu, Rini Utami juga berharap, kemitraan yang selama ini sudah dijalin dengan baik, semoga kedepan akan semakin lebih baik lagi.Sementara itu, Plt. Kepala Diskominfo Gunung Kidul, Kelik Yuliantoro menyampaikan selamat datang di Gunung Kidul, dan berharap semoga dengan adanya kegiatan ini bisa saling menguatkan terutama dengan pemberitaan pembangunan di daerahnya masing-masing.Sedangkan, Ketua PWI Gunung Kidul, Indar Widodo menyampaikan, bahwa membangun kemitraan antara wartawan dengan Pemerintah Daerah, kuncinya hanya satu, yaitu duduk harus sejajar dan koordinasi dengan baik untuk memberitakan kemajuan pemerintah di daerahnya masing-masing.Acara dilanjut dengan pemaparan materi dari Kepala Diskominfo Gunung Kidul dan Ketua PWI Gunung Kidul, Indar Widodo. Kemudian komunikasi dua arah dengan saling tanya jawab antara peserta Pers Gathering dengan narasumber.Dalam kegiatan tersebut juga dilakukan pengarahan dari Asisten Ekonomi dan Pembangunan Sekda Kendal, Wiwit Andariyono, dan acara diskusi bersama.',
        author: "Aiman yusuf",
        authorImageUrl:
        "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
        category: "Pengetahuan",
        ImageUrl:
        "https://www.kendalkab.go.id/images/konten/berita/20230524001.jpg",
        views: 251,
        createdAt: DateTime.now().subtract(const Duration(hours: 6))),
    Article(
        id: 4,
        title:
        "Bupati Kendal Serahkan 490 SK Pengangkatan PNS Dilingkungan Pemkab Kendal",
        subtitle:
        "Kepala Diskominfo Gunung Kidul, Kelik Yuliantoro, dan Ketua PWI Gunung Kidul, Indar Widodo sekaligus sebagai narasumber,Kepala Diskominfo Gunung Kidul, Kelik Yuliantoro, dan Ketua PWI Gunung Kidul, Indar Widodo sekaligus sebagai narasumber,",
        body:
        'Gunung Kidul- Dinas Komunikasi dan Informatika (Diskominfo) Kabupaten Kendal menggelar kegiatan Pers Gathering Tahun 2023 di Kabupaten Gunung Kidul dengan tema "Kemitraan Pers Dalam Mendukung Program Pembangunan Pemerintah Daerah", Jumat (26/05/2023) di Hotel Santika Gunung Kidul.Acara dihadiri oleh Plt. Kepala Diskominfo Kendal, Rini Utami, S.H., M.A., Asisten Ekonomi dan Pembangunan Sekda Kendal, Wiwit Andariyono, S.STP, Plt. Kepala Diskominfo Gunung Kidul, Kelik Yuliantoro, dan Ketua PWI Gunung Kidul, Indar Widodo sekaligus sebagai narasumber, serta diikuti oleh rekan wartawan Pemkab Kendal.Kepala Bidang Informasi dan Komunikasi Publik (IKP) Diskominfo Kendal, Ahmad Syarul Falah dalam laporannya menjelaskan, bahwa kegiatan ini dilaksanakan selama dua hari, mulai tanggal 26-27 Mei Kabupaten Gunung Kidul."Adapun tujuan dilaksanakannya kegiatan Pers Gathering ini untuk menjalin hubungan yang harmonis antara wartawan liputan daerah Kabupaten Kendal dengan Pemkab Kendal, dalam hal ini Dinas Kominfo Kabupaten Kendal," ujar Syarul Falah.Lebih lanjut, Kabid IKP Kendal juga mengatakan, Pers Gathering juga sebagai strategi media relation yang dapat digunakan sebagai sarana pertemuan untuk menjaga dan mempererat hubungan dengan media atau para wartawan. Selain itu, juga sebagai bentuk evaluasi kontribusi pemberitaan di wilayah Kabupaten Kendal.Dalam sambutannya, Plt. Kepala Diskominfo Kendal, Rini Utami Utami menyampaikan, bahwa kegiatan ini merupakan kegiatan rutin dilaksanakan setiap tahun bersama rekan wartawan mitra Pemkab Kendal."Kami ucapkan terima kasih kepada Pemkab Gunung Kidul dan rekan wartawan dari Gunung Kidul yang telah menyambut dengan baik kegiatan ini, dengan harapan bisa saling berbagi informasi terkait dengan kemitraan pers untuk pembagunan daerah yang lebih baik lagi," tutur Rini Utami.Ucapan terima kasih juga disampaikan oleh Plt. Kepala Diskominfo Kendal kepada rekan wartawan Kabupaten Kendal, yang mana selama ini sudah berkontribusi untuk pembangunan di Kabupaten Kendal, tentunya dengan memberikan informasi tentang pembangunan-pembangunan Kabupaten Kendal kepada masyarakat.Selain itu, Rini Utami juga berharap, kemitraan yang selama ini sudah dijalin dengan baik, semoga kedepan akan semakin lebih baik lagi.Sementara itu, Plt. Kepala Diskominfo Gunung Kidul, Kelik Yuliantoro menyampaikan selamat datang di Gunung Kidul, dan berharap semoga dengan adanya kegiatan ini bisa saling menguatkan terutama dengan pemberitaan pembangunan di daerahnya masing-masing.Sedangkan, Ketua PWI Gunung Kidul, Indar Widodo menyampaikan, bahwa membangun kemitraan antara wartawan dengan Pemerintah Daerah, kuncinya hanya satu, yaitu duduk harus sejajar dan koordinasi dengan baik untuk memberitakan kemajuan pemerintah di daerahnya masing-masing.Acara dilanjut dengan pemaparan materi dari Kepala Diskominfo Gunung Kidul dan Ketua PWI Gunung Kidul, Indar Widodo. Kemudian komunikasi dua arah dengan saling tanya jawab antara peserta Pers Gathering dengan narasumber.Dalam kegiatan tersebut juga dilakukan pengarahan dari Asisten Ekonomi dan Pembangunan Sekda Kendal, Wiwit Andariyono, dan acara diskusi bersama.',
        author: "Aiman yusuf",
        authorImageUrl:
        "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
        category: "Pengetahuan",
        ImageUrl:
        "https://www.kendalkab.go.id/images/konten/berita/20230523001.JPG",
        views: 168,
        createdAt: DateTime.now().subtract(const Duration(hours: 7))),
    Article(
        id: 5,
        title:
        "Pemkab Kendal Gelar Upacara Peringatan Harkitnas dan Kearsipan Nasional",
        subtitle:
        "serta diikuti oleh rekan wartawan Pemkab Kendal.Kepala Bidang Informasi dan Komunikasi Publik (IKP) Diskominfo Kendal,",
        body:
        'Gunung Kidul- Dinas Komunikasi dan Informatika (Diskominfo) Kabupaten Kendal menggelar kegiatan Pers Gathering Tahun 2023 di Kabupaten Gunung Kidul dengan tema "Kemitraan Pers Dalam Mendukung Program Pembangunan Pemerintah Daerah", Jumat (26/05/2023) di Hotel Santika Gunung Kidul.Acara dihadiri oleh Plt. Kepala Diskominfo Kendal, Rini Utami, S.H., M.A., Asisten Ekonomi dan Pembangunan Sekda Kendal, Wiwit Andariyono, S.STP, Plt. Kepala Diskominfo Gunung Kidul, Kelik Yuliantoro, dan Ketua PWI Gunung Kidul, Indar Widodo sekaligus sebagai narasumber, serta diikuti oleh rekan wartawan Pemkab Kendal.Kepala Bidang Informasi dan Komunikasi Publik (IKP) Diskominfo Kendal, Ahmad Syarul Falah dalam laporannya menjelaskan, bahwa kegiatan ini dilaksanakan selama dua hari, mulai tanggal 26-27 Mei Kabupaten Gunung Kidul."Adapun tujuan dilaksanakannya kegiatan Pers Gathering ini untuk menjalin hubungan yang harmonis antara wartawan liputan daerah Kabupaten Kendal dengan Pemkab Kendal, dalam hal ini Dinas Kominfo Kabupaten Kendal," ujar Syarul Falah.Lebih lanjut, Kabid IKP Kendal juga mengatakan, Pers Gathering juga sebagai strategi media relation yang dapat digunakan sebagai sarana pertemuan untuk menjaga dan mempererat hubungan dengan media atau para wartawan. Selain itu, juga sebagai bentuk evaluasi kontribusi pemberitaan di wilayah Kabupaten Kendal.Dalam sambutannya, Plt. Kepala Diskominfo Kendal, Rini Utami Utami menyampaikan, bahwa kegiatan ini merupakan kegiatan rutin dilaksanakan setiap tahun bersama rekan wartawan mitra Pemkab Kendal."Kami ucapkan terima kasih kepada Pemkab Gunung Kidul dan rekan wartawan dari Gunung Kidul yang telah menyambut dengan baik kegiatan ini, dengan harapan bisa saling berbagi informasi terkait dengan kemitraan pers untuk pembagunan daerah yang lebih baik lagi," tutur Rini Utami.Ucapan terima kasih juga disampaikan oleh Plt. Kepala Diskominfo Kendal kepada rekan wartawan Kabupaten Kendal, yang mana selama ini sudah berkontribusi untuk pembangunan di Kabupaten Kendal, tentunya dengan memberikan informasi tentang pembangunan-pembangunan Kabupaten Kendal kepada masyarakat.Selain itu, Rini Utami juga berharap, kemitraan yang selama ini sudah dijalin dengan baik, semoga kedepan akan semakin lebih baik lagi.Sementara itu, Plt. Kepala Diskominfo Gunung Kidul, Kelik Yuliantoro menyampaikan selamat datang di Gunung Kidul, dan berharap semoga dengan adanya kegiatan ini bisa saling menguatkan terutama dengan pemberitaan pembangunan di daerahnya masing-masing.Sedangkan, Ketua PWI Gunung Kidul, Indar Widodo menyampaikan, bahwa membangun kemitraan antara wartawan dengan Pemerintah Daerah, kuncinya hanya satu, yaitu duduk harus sejajar dan koordinasi dengan baik untuk memberitakan kemajuan pemerintah di daerahnya masing-masing.Acara dilanjut dengan pemaparan materi dari Kepala Diskominfo Gunung Kidul dan Ketua PWI Gunung Kidul, Indar Widodo. Kemudian komunikasi dua arah dengan saling tanya jawab antara peserta Pers Gathering dengan narasumber.Dalam kegiatan tersebut juga dilakukan pengarahan dari Asisten Ekonomi dan Pembangunan Sekda Kendal, Wiwit Andariyono, dan acara diskusi bersama.',
        author: "Aiman yusuf",
        authorImageUrl:
        "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
        category: "Pengetahuan",
        ImageUrl:
        "https://www.kendalkab.go.id/images/konten/berita/20230522002.JPG",
        views: 162,
        createdAt: DateTime.now().subtract(const Duration(hours: 8))),
    Article(
        id: 6,
        title:
        "Disporapar Kendal Gelar Pelatihan Kewirausahaan Bagi Pemuda Tahun 2023",
        subtitle:
        "Kendal- Dinas Pemuda Olahraga dan Pariwisata (Disporapar) Kabupaten Kendal menggelar Pelatihan Kewirausahaan Bagi Pemuda, Selasa (30/5/2023) di ruang Merak Tirto Arum Baru Kendal.",
        body:
        'Kendal- Dinas Pemuda Olahraga dan Pariwisata (Disporapar) Kabupaten Kendal menggelar Pelatihan Kewirausahaan Bagi Pemuda, Selasa (30/5/2023) di ruang Merak Tirto Arum Baru Kendal.Kegiatan tersebut dihadiri oleh Kepala Disporapar Kendal, Irham Chalid, dan diikuti oleh 150 orang peserta yang berasal dari 20 Kecamatan di Kabupaten Kendal.Dalam laporannya, Kepala Bidang Kepemudaan pada Disporapar Kendal, Utomo menjelaskan, bahwa kegiatan ini diselenggarakan selama 2 hari, mulai tanggal 30-31 Mei 2023."Kegiatan ini menghadirkan 5 orang narasumber yang memiliki kompetensi dibidang Digital Marketing. Hari pertama diisi oleh Dr. Hendi Pratama, S.Pd., M.A CEO edutran.id dan Waras Danar Rizki, S.E dari Owner Waras Porduction. Sedangkan hari kedua, diisi oleh Husni Mubarok, S.Pd Owner Husni Flowers Yogyakarta dan Rizki Imhan dari Founder Hero Creative Design, serta Rizky Bagus Ardianto, S.Kel., M.M dari CEO Mobile Application Development Kendal," ungkap Utomo.Kepala Disporapar Kendal, Irham Chalid menjelaskan, untuk kuota peserta pada pelatihan ini sebanyak 150 orang, dan pada proses pendaftaran secara online terdapat 190 orang yang mendaftar, kemudian setalah dilakukan diverifikasi terdapat 40 orang yang usianya melebihi batas yang ditentukan, dan sudah pernah mengikuti pelatihan di tahun-tahun sebelumnya.Irham juga menjelaskan, materi yang diberikan kepada para peserta, diantaranya seperti optimalisasi digital marketing menggunakan Medsos untuk melejitkan penjualan, membuat konten kreator yang simpel dan efektif, Optimalisasi Digital melalui Shoppe,optimalisasi fotografi memalui Smartphone, dan optimalisasi Facebook Ads, Instagram, dan SEO Google "Materi tersebut fokus pada digital marketing, dan para peserta akan mempraktekkannya secara langsung, mengingat digital marketing saat ini menjadi penting untuk dipahami oleh para peserta, baik yang sudah memulai usaha maupun yang akan memulai usaha," tutur Irham Chalid.Irham juga mengungkapkan, setelah pelatihan ini, nantinya akan ada kegiatan lanjutan, yaitu Disporapar Kendal akan menggelar Sekolah Bisnis Kendal (SBK) pada bulan Juni 2023, dan teknoprenuer yang merupakan kegiatan lomba bagi para pengusaha muda yang ada di Kabupaten Kendal pada bulan Juli 2023 mendatang.Irham berharap, dengan adanya kegiatan ini tentunya akan melahirkan para wirausahawan, sehingga akan membatu mengurangi pengangguran dan meningkatkan ekonomi masyarakat di Kabupaten Kendal.cara dilanjutkan dengan paparan materi dari narasumber. Kemudian para serta diminta untuk mempraktekkan secara langsung.',
        author: "Aiman yusuf",
        authorImageUrl:
        "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
        category: "Pengetahuan",
        ImageUrl:
        "https://www.kendalkab.go.id/images/konten/berita/20230530002.jpg",
        views: 7212,
        createdAt: DateTime.now().subtract(const Duration(hours: 9)))
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