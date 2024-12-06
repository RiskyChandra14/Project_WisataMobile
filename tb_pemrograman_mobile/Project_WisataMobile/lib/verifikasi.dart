import 'package:flutter/material.dart';

void main() {
  runApp(const VerifikasiPage());
}

class VerifikasiPage extends StatelessWidget {
  const VerifikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: const [Verifikasi()],
        ),
      ),
    );
  }
}

class Verifikasi extends StatelessWidget {
  const Verifikasi({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF55B967),
            Color(0xFF277999)
          ], // Warna gradien yang Anda inginkan
        ),
      ),
      child: Stack(
        children: [
          // "Kembali" Text at the top
          Positioned(
            top: 40,
            left: screenWidth * 0.43,
            child: Text(
              'Kembali',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // Verification Information Section
          Positioned(
            top: screenHeight * 0.20,
            left: screenWidth * 0.12,
            child: Row(
              children: [
                // Image Icon Placeholder
                Container(
                  width: 60,
                  height: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://ucarecdn.com/b7b09a59-9d5d-4617-8a50-3fdfb71eed4d/email.png"), // Gambar dari CDN
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                // Text for Verification Instructions
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Verifikasi Kode',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Kode Verifikasi dikirim melalui Email Anda\nexample*****@gmail.com',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Input box for the verification code
          Positioned(
            top: screenHeight * 0.38,
            left: screenWidth * 0.18,
            child: Row(
              children: List.generate(6, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 47,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: Colors.black.withOpacity(0.5)),
                  ),
                  child: Center(
                    child: Text(
                      (index + 1).toString(),
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.75),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),

          // "Verifikasi" Button
          Positioned(
            top: screenHeight * 0.55,
            left: screenWidth * 0.18,
            child: Container(
              width: screenWidth * 0.64,
              height: 57,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF140C47),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Verifikasi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),

          // Resend Email text with Icon
          Positioned(
            top: screenHeight * 0.45,
            left: screenWidth * 0.15,
            child: Row(
              children: [
                Icon(
                  Icons.email,
                  size: 25,
                  color: Colors.black.withOpacity(0.7),
                ),
                SizedBox(width: 8),
                // Text for resend email option
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Belum dapat email kode verifikasinya?\n',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Kirim Lagi',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
