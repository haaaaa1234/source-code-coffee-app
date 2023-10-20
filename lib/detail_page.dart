import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_mobile/category_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => __DetailPageState();
}

class __DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
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
                image: AssetImage("assets/images/Tempat2.jpg"))),
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
                  "Pesen Kopi Betek Malang", 
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
                      Text("4.6 (40 review)", 
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
                      Text("15.00-24.00 wib", 
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
                        Text("Ada promo untuk kamu", 
                        style: GoogleFonts.montserrat(fontSize: 12),
                        ),
                        Text("Dapatkan diskon 100 ribu", 
                        style: GoogleFonts.montserrat(fontSize: 11)),
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
              detail: "Jl. Mayjend Panjaitan No.191\nPenanggunagan Kec.Klojen Kota Malang",
            ),
              // Deskripsi
            TitleDetail(title: "Deskripsi", 
            detail:
              "Pesen Kopi Betek merupakan salah satu cabang dari PesenKopi Plus. Tempatnya istimewa banget untuk nongkrong, berada di lantai 5 rooftop sebuah hotel yang berlokasi di Jalan Mayjend panjaitan, Kota Malang. Cityviewnya cakep banget, bagus untuk cuci mata. Nongkrong menikmati menu sambil melihat view tersebut nyaman seklai. Tempat ngopi ini outdoornya paling pas ditempati saat sore dan malam."),

              // Title Ulasan
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  "Ulasan",
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