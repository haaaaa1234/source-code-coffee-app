import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_mobile/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginGooglePage(),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.amber,
      ),
    );
  }
}

class LoginGooglePage extends StatelessWidget {
  const LoginGooglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/images/coffee3.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            Positioned(
              top: 40,
              child: Text(
                "Ngopi Yukkk!!",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 10,
              right: 10,
              child: Card(
                color: Colors.black.withOpacity(0.3),
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Cari Tempat Ngopi Sekarang",
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                      child: Text(
                        "Untuk menikmati semua fitur kami, Anda perlu terhubung terlebih dahulu",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(fontSize: 12, color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white.withOpacity(0.3),
                      ),
                      child: Text("Get Started"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
