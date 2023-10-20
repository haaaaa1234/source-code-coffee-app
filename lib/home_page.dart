import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_mobile/widget/category.dart';
import 'package:tugas_mobile/widget/coffee_shop.dart';
import 'package:tugas_mobile/category_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[70],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Tersimpan"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
      ]),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
              height: 140, width: double.infinity, color: Colors.brown),
            Column(
              children: [
              SizedBox(
                height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                        Container(
                          alignment: Alignment.topLeft, 
                          height: 45, 
                          width: 45,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flaticon.com%2Ffree-icon%2Fprofile_3135715&psig=AOvVaw0lZvjAaNfTR7ZnUS9aPB7x&ust=1697708168075000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCIj4uPOl_4EDFQAAAAAdAAAAABAE")),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Colors.white, 
                              style: BorderStyle.solid, 
                              width: 2
                            )
                          )
                          ),
                          SizedBox(
                            width: 10,
                            ), 
                            Text("Hallo Selamat Datang!", 
                            style: GoogleFonts.montserrat(color: Colors.white),
                            )
                      ],
                  ),
                  Container(
                    alignment: Alignment.topRight, 
                    child: Icon(
                      Icons.notifications_active, 
                    color: Colors.white,
                    size: 30,
                    )),
                    ],
                ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 60, 
                  width: double.infinity, 
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F5F7),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    cursorHeight: 20, 
                    autofocus: false, 
                    decoration: InputDecoration(
                      hintText: "Cari Coffee Favoritmu", 
                      prefixIcon: Icon(Icons.search), 
                      border: OutlineInputBorder(
                        borderSide: 
                            BorderSide(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(30))),
                  ),
                ),
          ],
          )
        ],
        ),
        Padding( 
                  padding: const EdgeInsets.all(15),
                  child: Row(
                  children: [
                    Category(imagePath: "assets/images/makanan.jpg", title: "Makanan"),
                    Category(imagePath: "assets/images/minuman.jpg", title: "Minuman"),
                    Category(imagePath: "assets/images/snack.jpg", title: "Camilan"),
                    Category(imagePath: "assets/images/dessert.jpg", title: "Dessert"),
                  ],
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Tempat Favorit ☕️", 
                  style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                ),
                CoffeShop(
                  imagePath: "assets/images/kopi1.jpeg",
                  nameShop: "Batu",
                  rating: "4.8",
                  jamBuka: "15.00 - 00.00",
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => CategoryPage(category: "Batu"),
                        ),
                      );
                  }
                ),
                CoffeShop(
                  imagePath: "assets/images/kopi2.jpg",
                  nameShop: "Soekarno Hatta",
                  rating: "4.7",
                  jamBuka: "16.00-23.00",
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => CategoryPage(category: "Soekarno Hatta"),
                        ),  
                      );
                  }
                ),
                CoffeShop(
                  imagePath: "assets/images/kopi3.jpg",
                  nameShop: "Kadjoetangan",
                  rating: "4.7",
                  jamBuka: "16.00-23.00",
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => CategoryPage(category: "Kadjoetangan"),
                        ),
                      );
                  }
                ),
                CoffeShop(
                  imagePath: "assets/images/kopi4.jpg",
                  nameShop: "Dinoyo",
                  rating: "4.7",
                  jamBuka: "16.00-23.00",
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => CategoryPage(category: "Dinoyo"),
                        ),
                    );
                  }
                ),
                CoffeShop(
                  imagePath: "assets/images/kopi5.jpg",
                  nameShop: "Klojen",
                  rating: "4.7",
                  jamBuka: "16.00-23.00",
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => CategoryPage(category: "Klojen"),
                        ),
                    );
                  }
                ),
                CoffeShop(
                  imagePath: "assets/images/kopi6.jpg",
                  nameShop: "Cangar",
                  rating: "4.7",
                  jamBuka: "16.00-23.00",
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => CategoryPage(category: "Cangar"),
                        ),
                    );
                  }
                ),
                CoffeShop(
                  imagePath: "assets/images/kopi7.jpg",
                  nameShop: "Blimbing",
                  rating: "4.7",
                  jamBuka: "16.00-23.00",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryPage(category: "Blimbing"),
                        ),
                       );
                  }
                )
        ],
    )),
    ),
    );
  }
}



