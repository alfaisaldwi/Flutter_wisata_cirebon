class TourismPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Keraton Kanoman Cirebon',
    location: 'Jl.Kanoman No.40,Lemahwungkuk,Kec.Lemahwungkuk,Kota Cirebon',
    description:
        'Keraton Kanoman merupakan salah satu bangunan peninggalan Kerajaan Cirebon yang masih berdiri hingga kini. Keraton ini dibangun oleh Pangeran Muhamad Badrudin Kertawijaya atau Sultan Anom I pada 1678. Keraton kanoman menjadi pusat kegiatan politik, ekonomi, sosial, dan budaya yang penting bagi Kota Cirebon.',
    openDays: 'Buka Setiap Hari',
    openTime: '09:00 - 17:00',
    ticketPrice: 'Rp 15000',
    imageAsset: 'images/Keraton Kanoman.jpeg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/87/4d/40/di-bangunan-ini-ada-lonceng.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/2d/b4/e5/photo2jpg.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/1a/b7/f3/kereta-kencana.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/d6/35/4d/20180121-125224-largejpg.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/f0/46/1b/masjid-kraton.jpg?w=1200&h=-1&s=1',
    ],
  ),
  TourismPlace(
    name: 'Goa Sunyaragi',
    location: 'Sunyaragi,Kec.Kesambi,Kota Cirebon,Jawa Barat.',
    description:
        'Gua Sunyaragi atau Taman Sari Guwa Sunyaragi adalah sebuah gua buatan yang berlokasi di kelurahan Sunyaragi, Kesambi, Kota Cirebon dimana terdapat bangunan mirip candi yang disebut Gua Sunyaragi, atau Taman Air Sunyaragi, atau sering disebut sebagai Tamansari Sunyaragi.',
    openDays: 'Buka Setiap Hari',
    openTime: '08:00 - 17:00',
    ticketPrice: 'Rp 20000',
    imageAsset: 'images/Goa Sunyaragi.jpeg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/87/4d/40/di-bangunan-ini-ada-lonceng.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/2d/b4/e5/photo2jpg.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/1a/b7/f3/kereta-kencana.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/d6/35/4d/20180121-125224-largejpg.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/f0/46/1b/masjid-kraton.jpg?w=1200&h=-1&s=1'
    ],
  ),
  TourismPlace(
    name: 'Pantai Kejawanan',
    location: 'Pegambiran,Kec.Lemahwungkuk,Kota Cirebon.',
    description:
        'Di Pantai Kejawanan pemandangan matahari terbit dapat disaksikan dengan posisi yang bagus, yaitu tepat di tengah-tengah pantai. Di sana juga kita bisa berwisata keliling pantai dengan menggunakan perahu motor milik nelayan, dengan tarif yang cukup murah yaitu seharga lima ribu Rupiah saja per orang.',
    openDays: 'Buka Setiap Hari',
    openTime: '09:00 - 17:00',
    ticketPrice: 'Rp 10000',
    imageAsset: 'images/Pantai Kejawanan.jpeg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/0d/c2/e7/e6/quotes-kota-bandung.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/17/f4/44/01/jalan-asia-afrika.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-s/0a/ef/36/e2/jalan-asia-afrika.jpg',
    ],
  ),
  TourismPlace(
    name: 'Cirebon Waterland Ade Irma Suryani',
    location: 'Jl.Yos.Sudarso No.1,Lemahwungkuk,Kec.Lemahwungkuk,Kota Cirebon.',
    description:
        'Taman Ade Irma Suryani adalah tempat rekreasi keluarga yang recomended, untuk dijadikan lokasi wisata keluarga di Cirebon. Saat ini Taman Ade Irma Suryani telah berganti nama menjadi Cirebon Waterland, sejak tahun 2014 lalu.',
    openDays: 'Buka Setiap Hari',
    openTime: '10:00 - 22:00',
    ticketPrice: 'Rp 50000',
    imageAsset: 'images/ade irma 1.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/15/01/d7/4b/p-20180510-153310-01.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/15/68/00/32/stone-garden-citatah.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/0d/a2/cb/05/stone-garden-citatah.jpg',
    ],
  ),
  TourismPlace(
    name: 'Batu Lawang',
    location: 'Cupang,Kec.Gempol,Kabupaten Cirebon',
    description:
        'Batu Lawang menjadi tempat wisata baru di Cirebon yang rekomended dengan keindahan alam dan spot selfienya. Sajian keindahan panorama yang dikemas dengan spot foto instagramable membuat tempat satu ini selalu ramai dikunjungi oleh wisatawan.',
    openDays: 'Buka Setiap Hari',
    openTime: '07:00 - 17:00',
    ticketPrice: 'Rp 50000',
    imageAsset: 'images/Batu Lawang.jpeg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/08/8b/87/50/bandung-movie-park.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/17/67/d5/53/img-20190505-114509-largejpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/09/73/33/05/taman-film-pasopati.jpg',
    ],
  ),
  TourismPlace(
    name: 'Bukit Grongrong',
    location: 'Patapan,Kec.Beber,Kabupaten Cirebon,Jawa Barat',
    description:
        'Nikmati keindahan pemandangan Cirebon dari atas bukit Gronggong. Bukit yang berlokasi memberikan nuansa romantis, terutama saat senja. Gak perlu khawatir kelaparan, karena tersedia warung kaki lima hingga restoran di sini.',
    openDays: 'Buka Setiap Hari',
    openTime: '24 jam',
    ticketPrice: 'Rp 2000',
    imageAsset: 'images/Bukit Grongrong.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-w/19/1c/8e/f7/geology-museum.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/11/a7/35/b7/geology-museum.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-s/1a/55/e0/dc/geology-museum.jpg',
    ],
  ),
  TourismPlace(
    name: 'Hutan Kera Plangon',
    location: 'Babakan,Kec.Sumber,Kabupaten Cirebon,Jawa Barat',
    description:
        'Kawasan hutan seluas 48 hektare ini merupakan salah satu objek wisata purbakala. Selain dipenuhi monyet atau kera, kamu bisa mengunjungi makam Pangeran Panjunan dan Pangeran Kejaksan. Itulah alasan utama kenapa tempat ini selalu ramai dikunjungi para peziarah setiap 2 Syawal.',
    openDays: 'Buka Setiap Hari',
    openTime: '24 jam',
    ticketPrice: 'Rp 4000',
    imageAsset: 'images/plangon.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/17/f9/ff/f8/floating-market-bandung.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-p/1a/86/d3/cd/20200103-125059-largejpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-p/19/ce/b4/9b/img20181224120857-largejpg.jpg',
    ],
  ),
  TourismPlace(
    name: 'Setu Sedong',
    location: 'Sedong Lor,Sedong,Cirebon,Jawa Barat',
    description:
        'Tempat piknik di Cirebon pertama dengan sajian alam mempesona yang akan menghipnotis siapa saja yang mengunjunginya yaitu Setu Sedong. Alam Cirebon yang mengagumkan menyimpan sejuta pesona destinasi wisata menarik.',
    openDays: 'Buka Setiap Hari',
    openTime: '24 jam',
    ticketPrice: 'Rp 3000',
    imageAsset: 'images/Setu Sedong.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/0b/6e/7c/ce/rocks-sticking-out-of.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-p/0b/35/30/14/white-crater.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-o/0a/8b/9a/79/2945-t00572-www-initempatwisat.jpg',
    ],
  ),
  TourismPlace(
    name: 'Ranca Upas',
    location: 'Ciwidey',
    description:
        'Ranca Upas Ciwidey adalah kawasan bumi perkemahan di bawah pengelolaan perhutani. Tempat ini berada di kawasan wisata Bandung Selatan, satu lokasi dengan kawah putih, kolam Cimanggu dan situ Patenggang. Banyak hal yang bisa dilakukan di kawasan wisata ini, seperti berkemah, berinteraksi dengan rusa, sampai bermain di water park dan mandi air panas.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Rp 20000',
    imageAsset: 'images/ranca-upas.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-o/1a/e0/7f/9c/kampung-cai-ranca-upas.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/2f/87/ranca-upas.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/ee/27/0a/ranca-upas.jpg',
    ],
  ),
];
