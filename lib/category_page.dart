import 'package:flutter/material.dart';
import 'package:tugas_mobile/category_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_mobile/home_page.dart';

class CategoryPage extends StatelessWidget {
  final String category;

  CategoryPage({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Kafe di $category'), // Menggunakan category di judul
      ),
      body: ListView.builder(
        itemCount: cafeList.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            cafe: cafeList[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    cafe: cafeList[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class cafePlace {
  String cafe;
  String imagePath;
  String rating;
  String jambuka;
  String cardPromo;
  String Alamat;
  String description;
  String ulasan;

  cafePlace({
    required this.cafe,
    required this.imagePath,
    required this.rating,
    required this.jambuka,
    required this.cardPromo,
    required this.Alamat,
    required this.description,
    required this.ulasan,
  });
}

class KategoriList {
  String image;
  String name;
  String rating;
  String jambuka;

KategoriList({
  required this.image,
  required this.name,
  required this.rating,
  required this.jambuka,
});
}

var cafeList = [
  cafePlace(
    cafe: "Pesen Kopi Betek Malang",
    imagePath: "assets/images/Tempat1.jpg",
    rating: "4.8",
    jambuka: "24 Jam",
    cardPromo: "Ada promo untuk kamu. Dapatkan diskon 100 ribu",
    Alamat: "Jl. Mayjend Panjaitan No.191\nPenanggunagan Kec.Klojen Kota Malang",
    description: "Pesen Kopi Betek merupakan salah satu cabang dari PesenKopi Plus. Tempatnya istimewa banget untuk nongkrong, berada di lantai 5 rooftop sebuah hotel yang berlokasi di Jalan Mayjend panjaitan, Kota Malang. Cityviewnya cakep banget, bagus untuk cuci mata. Nongkrong menikmati menu sambil melihat view tersebut nyaman seklai. Tempat ngopi ini outdoornya paling pas ditempati saat sore dan malam.",
    ulasan: "ulasan",
  ), //cafePlace
  cafePlace(
    cafe: "Nakoa",
    imagePath: "assets/images/Tempat2.jpg",
    rating: "4.7",
    jambuka: "16.00 - 24.00",
    cardPromo: "Ada promo untuk kamu. Dapatkan diskon 100 ribu",
    Alamat: "Jl. Bondowoso No.14, Gading Kasri, Kecamatan Klojen, Kota Malang",
    description: "Nakoa Cafe adalah salah satu tempap nongkrong yang ada di daerah Malang Jawa Timu. Tempat ini menyuguhkan sebuah cafe yang kekinian, tempat nongkrong ini menwarkan menu yang beragam. Memiliki area indoor dan outdoor dengan tempat duduk yang cukup banyak.Apabila ingin mengerjakan tugas, meeting, atau bertemu client, bisa memilih area indoor, area indoor juga nyaman dilengkapi dengan berbagai fasilitas mendukung",
    ulasan: "ulasan",
  ), //cafePlace
  cafePlace(
    cafe: "Distrik 18",
    imagePath: "assets/images/Tempat3.jpg",
    rating: "4.9",
    jambuka: "15.00 - 23.00",
    cardPromo: "Ada promo untuk kamu. Dapatkan diskon 100 ribu",
    Alamat: "Jl. Cengger Ayam No.18, RW.02, Tulusrejo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141.",
    description: "Distrik 18 Malang merupakan destinasi yang menarik untuk dikunjungi karena tempatnya yang memukau. Tidak hanya itu, fasilitas yang tersedia di cafe ini juga membuat pengunjung merasa sangat nyaman dan betah berlama-lama di sini. Coffee shop ini bisa menjadi tempat nongkrong atau tempat bekerja dengan suasana yang sangat estetik. Konsep cafe yang unik, modern, dan minimalis membuat banyak orang tertarik untuk mengunjungi tempat ini.",
    ulasan: "ulasan",
  ), //cafePlace
  cafePlace(
    cafe: "Mera",
    imagePath: "assets/images/Tempat4.jpg",
    rating: "4.8",
    jambuka: "07.00 - 19.00",
    cardPromo: "Ada promo untuk kamu. Dapatkan diskon 100 ribu",
    Alamat: "Jl. Arief Rahman Hakim Gg. 11, Kauman, Kec. Klojen, Kota Malang, Jawa Timur 65119",
    description: "Coffeshop atau kafe menjadi salah satu tempat yang identik dengan anak muda. Tak peduli pagi, siang, atau pun malam, mayoritas kaum muda kini memilih kafe sebagai destinasi untuk melakukan berbagai aktivitas, mulai dari sekedar nongkrong hingga pertemuan bisnis. Fenomena yang sama juga menghinggapi anak-anak muda di Kota Malang. Mereka banyak menghabiskan waktu di coffeeshop yang tumbuh bak cendawan di musim hujan. Salah satu coffeeshop yang menjadi jujukan adalah Mera. Namun berbeda dengan coffeeshop-coffeeshop lainnya, Mera mengusung konsep berbeda. Mera sendiri berlokasi di dalam gang sempit di kampung Kayutangan Heritage. ",
    ulasan: "ulasan",
  ), //cafePlace
  cafePlace(
    cafe: "Robucca",
    imagePath: "assets/images/Tempat5.jpg",
    rating: "5.0",
    jambuka: "15.00 - 24.00",
    cardPromo: "Ada promo untuk kamu. Dapatkan diskon 100 ribu",
    Alamat: "Jalan Raya 1A, Ijen Nirwana, Bareng, Klojen, Kota Malang",
    description: "Kota Malang dikenal dengan udaranya yang sejuk dan memiliki beragam spot wisata. Selain itu, Malang juga surganya tempat nongkrong sambil kulineran. Salah satu kafe yang sedang hits di kota Malang adalah Robucca. Desain ala jepang dan industrial sangat kentara saat pertama kali melihat kafe ini. Persegi, minimalis, monokrom, dan ada ruang terbuka pada kafe Robucca. Suasana kafenya pun teduh. dikarenakan diluar kafe ditumbuhi beberapa pohon. Di area tempat duduk juga diletakkan tanaman agar membuat nongkrong jadi lebih segar. Menu makanan di kafe Robucca didominasi korean dan japanese food. Kita juga bisa memesan aneka nasi, seperti karaage dan bento. Untuk camilan yang tersedia ada creamy boba donut, takoyaki, edamame, french fries, onion ring dan sebagainya. Untuk minuman ada kopi, yoghurt, boba, yuzu, tea, dan masih banyak lagi. Tunggu apa lagi? yuk aja teman temanmu buat nongkrong di Robucca Malang." ,
    ulasan: "ulasan",
  ), //cafePlace
  cafePlace(
    cafe: "Crita Sena",
    imagePath: "assets/images/Tempat6.jpg",
    rating: "5.0",
    jambuka: "11.00 - 02.00 WIB",
    cardPromo: "Ada promo untuk kamu. Dapatkan diskon 100 ribu",
    Alamat: "Jl. Kahuripan No.1 Klojen, Kec Klojen, Kota Malang, Jawa Timur 65119.",
    description: "Kafe yang satu ini merupakan kafe baru yang mengusung konsep kekinian sehingga terlihat estetik. Banyak yang memutuskan untuk mengunjungi kafe ini bersama dengan teman-teman atau pun kekasih karena memang Critasena Cafe Malang ini begitu mempesona sekali. Daya tarik utama yang disajikan oleh kafe Critasena Cafe Malang adalah tempatnya begitu nyaman untuk digunakan sebagai tempat ngobrol bersama orang lain. Konsep yang digunakan dalam membuat kafe ini adalah konsep yang mengutamakan rasa nyaman pengunjung dengan inspirasi bangunan industrial sehingga bangunan kafe terlihat begitu modern. Vibes yang ditemukan pada kafe ini pasti akan membuat Anda merasa sangat puas terlebih jika Anda mencari kafe yang memiliki vibes sempurna untuk melakukan chilling. Terdapat dinding yang terbuat dari kaca dan cermin berukuran besar yang ditaruh di sekitar tempat duduk pelanggan, sehingga Anda bisa menggunakannya untuk bercermin dan memperbaiki penampilan dengan lebih mudah. Critasena Cafe Malang tidak hanya menyajikan kenyamanan saja, namun kafe ini juga dipenuhi oleh nilai-nilai estetika. Hal itu tidak mengherankan sama sekali karena bangunan yang diterapkan adalah tipe bangunan minimalis yang kini memang sedang sangat populer di kalangan generasi muda. Dengan begitu, ketika Anda sedang memiliki keinginan untuk melakukan selfie atau pun swafoto bersama dengan keluarga dan teman-teman pasti dijamin hasil fotonya terlihat bagus ketika menggunakan Critasena Cafe Malang ini sebagai latar belakang. Foto yang estetik itu akan membantu membuat feed Instagram Anda terlihat lebih indah lagi ketika dilihat oleh orang lain.",
    ulasan: "ulasan",
  ), //cafePlace
  cafePlace(
    cafe: "Naiki Coffee",
    imagePath: "assets/images/Tempat7.jpg",
    rating: "5.0",
    jambuka: "10.00 - 22.00 WIB",
    cardPromo: "Ada promo khusus untuk kamu. Dapatkan diskon 100 ribu",
    Alamat: "Jl. Semeru No.42, Oro-Oro Dowo, Kec.Klojen, Kota Malang, Jawa Timur 65119.",
    description: "Telah hadir salah satu coffee shop di Malang yaitu Naiki Cafe yang menjadi salah satu cafe terluas di sana. Dengan segala kelengkapan yang dimiliki oleh cafe tersebut, akan membuat setiap kamu leluasa untuk menelusuri setiap sisinya. Mulai dari bagian dalam maupun luar ruangan, sangat wajib sekali kamu eksplorasi. Maka, jangan aneh bila nantinya kamu akan merasakan langsung bagaimana cozy-nya cafe yang satu itu.  Untuk menugas sendirian saja, rasanya nyaman untuk melalui hari disana. Tidak perlu khawatir juga bila kamu mengajak kawan-kawan, nantinya pasti akan sama-sama seru untuk nugas bareung. Maka, bisa dikatakan bahwa Naiki Cafe Malang ini, selain cocok untuk nugas sendirian, belajar bersama di sana juga akan sangat menyenangkan. Setiap sisinya melahirkan sesuatu hal yang menyenangkan untuk ditelusuri bersama-sama. Bagaimana suatu cafe bisa dibuat untuk memenuhi segala kenyamanan bagi siapapun di dalamnya, tidak hanya satu atau dua orang saja.  ",
    ulasan: "ulasan",
  ), //
  cafePlace(
    cafe: "Kotaks Kaffe Co.",
    imagePath: "assets/images/Tempat8.jpeg",
    rating: "4.9",
    jambuka: "08.00 - 23.00 WIB",
    cardPromo: "Ada promo khusus untuk kamu. Dapatkan diskon 100 ribu",
    Alamat: "Jl Raya Langsep No 2B, Pisang Candi, Kec.Sukun, Kota Malang, Jatim.",
    description: "Kotask Cafe Malang adalah kedai kopi yang terletak di Kota Malang. Terkenal dengan suasana yang nyaman dan menu kopi berkualitas, cafe Malang hits ini menjadi salah satu tempat favorit bagi para pecinta kopi di Malang. Dengan dekorasi yang unik dan suasana yang cozy, kedai kopi ini menjadi tempat yang tepat untuk bersantai sambil menikmati secangkir kopi. Cafe ini juga cocok menjadi objek bagi para pemburu spot selfi atau fotografi. Sebab, tiap sudutnya menampilkan sisi visual estetik yang bisa menjadi spot foto kekinian dan instagramable. Sebagian besar menu di Kotask Kaffee Co Malang ini berupa sajian kuliner Western dan Asia. Jadi, Anda tidak akan menemukan menu-menu makanan khas Malang yang terkenal atau kuliner Nusantara di sini. Namun dari sekian banyak pilihan menu, ada beberapa yang jadi menu terfavorit. Sebut saja ada Swedish Meatball, Lasagna, Takeshi, Japanese Beef Ramen, dan Wagyu Sirloin. Sementara untuk minumannya, yang paling favorit adalah avocado presso, kenya Ab Tamu, dan Caramel Machiato. Kategori camilan juga ada beberapa yang masuk dalam daftar menu favorit. Contohnya saja Enoki Fries, Chicken Wings, White Chocochip, Waffle, Croissant, Choco Ciabatta, Tuna Vaganza, dan Tuna Sandwich. Cafe ini hadir dengan sisi keunikan tersendiri. Diantaranya keunikan dari konsep desain bangunannya, sistem pelayanan self service, dan menu-menunya yang lezat. ",
    ulasan: "ulasan",
  ), //cafePlace
  cafePlace(
    cafe: "Noi Coffee",
    imagePath: "assets/images/Tempat9.jpg",
    rating: "4.9",
    jambuka: "10.00 - 19.00 WIB",
    cardPromo: "Ada promo khusus untuk kamu. Dapatkan diskon 100 ribu",
    Alamat: "Jl. Raya Sumber Brantas No.310, Sumber Brantas, Kec. Bumiaji, Kota Batu, Jawa Timur 65336.",
    description: "Noi Coffee merupakan salah satu objek wisata kuliner di Kota Batu yang sedang viral diperbincangkan banyak orang. Sebuah cafe istimewa yang cocok buat Quality Time bersama teman, kerabat dan keluarga. Tempat ini memang masih sangat baru, karena baru beroperasi mulai bulan September 2020 dan langsung viral di media sosial. Daya tarik utama yang membuat tempat selalu ramai yakni lokasinya menawarkan pesona alam yang menawan. Disana wisatawan akan disuguhkan keindahan alam berupa view hamparan perbukitan hijau yang indah. Mengingat lokasi Noi Coffee berada di kaki Gunung Arjuno dan Gunung Arjuna tentunya memiliki hawa yang sejuk dan dingin khas pegunungan. Hal ini tentu akan sangat pas jika sembari menikmati secangkir kopi hangat. Noi Coffee Sumber Brantas memiliki desain interior yang didominasi warna hitam yang cukup abstrak. Bahkan disetiap sudut Noi Cafe Bumiaji Batu yang begitu instagramable tentu akan sangat cocok buat latar belakang berswafoto selfie. ",
    ulasan: "ulasan",
  ), //cafePlace
  cafePlace(
    cafe: "Zocco Coffee",
    imagePath: "assets/images/Tempat10.jpg",
    rating: "5.0",
    jambuka: "07.00 - 21.00 WIB",
    cardPromo: "Ada promo khusus untuk kamu. Dapatkan diskon 100 ribu",
    Alamat: "Jl. Sulfat No.10, Purwantoro, Kecamatan Blimbing, Kota Malang, Jawa Timur 65126. ",
    description: "Zocco Heritage Cafe Malang adalah sebuah tempat nongkrong teranyar yang saat ini sedang hits di kalangan pecinta kopi. Cafe dengan konsep kekinian ini tak hanya menyajikan daerah nongkrong yang super nyaman yang terdiri dari area indoor dan outdoor bahkan lantai 2 juga ada. Kamu terhitung akan di bikin betah bersama layanan yang tersedia di tempat ini. Di antaranya ada Free WIFI dan Colokan di dinding dapat membuatmu tidak mesti khawatir jika mempunyai laptop untuk ngerjain tugas. Apalagi buat kamu yang doyan mabar game online, dapat singgah bersama dengan kawan mabar anda di tempat ini. Buat kamu yang suka eksis atau bahagia hunting spot-spot foto keren, area ini juga pantas anda masukan ke di dalam list kunjungan saat akhir pekan nanti. Walaupun tidak di sediakan tempat spot foto khusus, namun tempat ini sendiri telah sedia kan kondisi yang cozy bersama dekorasi yang cantik. Perpaduan pada natural dan minimalis agar bakal memicu hasil fotomu muncul instagramable. Menu yang di sajikan tidak cuman rasanya yang sedap harganya juga sangat bersahabat menjadi kamu tidak wajib cemas kantong jebol di saat singgah ke daerah ini. Untuk menunya pada lain coffee dan non coffee, termasuk tersedia lebih dari satu minuman signature serta snack dan makanan berat. Untuk harganya sangat tidak mahal yaitu pada 8 ribuan sampai bersama 20 ribuan saja. Cafenya sendiri muncul minimalis 2 lantai dengan di dominasi warna hitam dan putih serta mempunyai jendela-jendala besar dan lantai yang terbuat dari batu alam mengkilap yang terbagi jadi 2 tempat yakni tempat indoor dan outdoor. Pertama bagian indoor, tempatnya berada di bangunan utama dan juga dekat bersama meja Bar serta ruangan di lantai 2. ",
    ulasan: "ulasan",
  ), //cafePlace
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Kafe di Malang'),
      ),
      body: ListView.builder(
        itemCount: cafeList.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            cafe: cafeList[index],
            // title: cafeList[index].cafe,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    cafe: cafeList[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }


class CategoryItem extends StatelessWidget {
  final cafePlace cafe;
  final VoidCallback onTap;

  const CategoryItem({
    Key? key,
    required this.cafe,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            // Gambar Kafe
            Image.asset(
              cafe.imagePath, // Ganti dengan URL gambar kafe
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16), // Jarak antara gambar dan teks

            // Nama Kafe
            Text(
              cafe.cafe,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
        
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final cafePlace cafe;

  const DetailPage({Key? key, required this.cafe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(cafe.cafe),
      ),
      body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tumpukan foto dan Container nama toko
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: height * 0.4,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(cafe.imagePath))),
            ),
            Positioned(
              top: 16,
              left: 16,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
              
              child: Container(
                child: Icon(
                  Icons.arrow_back, 
                color: Colors.white,
                ),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey, 
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              )),
            ),
              Positioned(
              top: 16,
              right: 16,
              child: Container(
                child: Icon(
                  Icons.assistant_direction, 
                color: Colors.white,
                ),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey, 
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              )),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  cafe.cafe, 
                    style: GoogleFonts.montserrat(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold),
              ),
              ),
              height: height * .09,
              width: double.infinity,
              decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), 
              topRight: Radius.circular(20))),
            )
          ],
        ),
          // Row rating dan jam buka
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        cafe.rating, 
                      style: GoogleFonts.montserrat(fontSize: 12)),
                  ]
                      ),
                      Row(
                  children: [
                    
                    Icon(
                      Icons.access_time,
                      color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        cafe.jambuka, 
                      style: GoogleFonts.montserrat(fontSize: 12)),
                  ],
                )
              ],
            ),
          ),

            //Card promo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.amber[100],
                child: Padding(
                padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                        Text(
                          cafe.cardPromo, 
                        style: GoogleFonts.montserrat(fontSize: 12),
                        ),
                    ],
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Tukar"))
                  ],
                ),
              ),
              ),
            ),

            // Alamat
            TitleDetail(
              title: "Alamat",
              detail: 
              cafe.Alamat,
            ),

            // Deskripsi
            TitleDetail(
              title: "Deskripsi", 
            detail:
              cafe.description,
            ),

              // Title Ulasan
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  cafe.ulasan,
                  style: GoogleFonts.montserrat(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),

              // Widget Ulasan / Coment
              Comment(),
              Comment(),
              Comment(),
              Comment(),

      ],
      ),
      ),
    )
    );
    
  }
}

class Comment extends StatelessWidget {
  const Comment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
      Row(
        children:  [
          Image.network("assets/images/profile1.jpg", 
          width: 40,
          ),
          SizedBox(
            width: 10,
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text ("Kirana"),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber), 
                Icon(Icons.star, color: Colors.amber), 
                Icon(Icons.star, color: Colors.amber), 
                Icon(Icons.star, color: Colors.amber)
                ],
            )
            ],
            )
        ],
        ),
        SizedBox(
          height: 10,
          ),
        Text(
          style: GoogleFonts.montserrat(
          fontSize: 12),
          "Tempat nyaman, harga terjangkau. Kopinya mantap. Berlama-lama ngobrol dengan rekan bisnis juga enak. Its great place.",
        )
      ],),
    );
  }
}

class TitleDetail extends StatelessWidget {
  final String title;
  final String detail;
  const TitleDetail({
    Key? key,
    required this.title,
    required this.detail,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title, 
        style: GoogleFonts.montserrat(
          fontSize: 12, fontWeight: FontWeight.bold),
        ), 
        SizedBox(
          height: 10,
        ),
        Text(
          detail,  
        style: GoogleFonts.montserrat(
          fontSize: 12))
        
        ],
    
      ),
    );
  }
}