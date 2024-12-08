import 'package:flutter/material.dart';
// import 'package:tb_pemrograman_mobile/Profile.dart';
import 'package:tb_pemrograman_mobile/screens/homepage.dart';
import 'dart:async'; // Import untuk Timer
import 'regist.dart'; // Import halaman Registrasi
 // Misalnya halaman baru setelah verifikasi (ganti sesuai dengan halaman Anda)

void main() => runApp(VerificationPage());

class VerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Verification'),
      color: Colors.green,
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<TextEditingController> _controllers = List.generate(
      6, (index) => TextEditingController()); // List of controllers for each input field
  int _counter = 60; // Durasi countdown
  bool _canResend = true; // Tombol kirim ulang bisa ditekan saat pertama kali
  late Timer _timer; // Timer untuk countdown

  @override
  void dispose() {
    _timer.cancel(); // Pastikan timer berhenti saat widget dibuang
    super.dispose();
  }

  // Fungsi untuk memulai countdown
  void _startCountdown() {
    setState(() {
      _counter = 60;
      _canResend = false; // Nonaktifkan tombol kirim ulang kode
    });

    // Timer yang akan menurunkan nilai counter setiap detik
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_counter > 0) {
        setState(() {
          _counter--;
        });
      } else {
        setState(() {
          _canResend = true; // Setelah 60 detik, tombol bisa digunakan
        });
        _timer.cancel(); // Hentikan timer setelah countdown selesai
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF55B967),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => RegistPage()),
            );
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF55B967), Color(0xFF277999)],
          ),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
                'https://ucarecdn.com/2aab5add-b7be-43c3-87ce-cd42861b24ae/kota_bunga__1_removebgpreview1.png',
                height: 250),
            Text(
              'Verifikasi Akun Anda',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Masukkan kode verifikasi yang telah dikirimkan ke email Anda.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(6, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: SizedBox(
                    width: 40,
                    child: TextField(
                      controller: _controllers[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: "",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onChanged: (value) {
                        if (value.isNotEmpty && index < 5) {
                          FocusScope.of(context)
                              .nextFocus(); // Move focus to next field
                        }
                        if (value.isEmpty && index > 0) {
                          FocusScope.of(context)
                              .previousFocus(); // Move focus to previous field
                        }
                      },
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String verificationCode = _controllers
                    .map((controller) => controller.text)
                    .join(); // Join all inputs into one string

                print('Kode verifikasi: $verificationCode');

                // Jika verifikasi berhasil, pindah ke halaman berikutnya
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()), // Halaman setelah verifikasi berhasil
                );
              },
              child: Text(
                'Verifikasi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
            ),
            SizedBox(height: 15),
            TextButton(
              onPressed: _canResend
                  ? () {
                      // Logic for resending verification code
                      print('Mengirim ulang kode verifikasi...');
                      _startCountdown(); // Mulai countdown saat tombol ditekan
                    }
                  : null, // Disable button if timer is not finished
              child: Text(
                _canResend ? 'Kirim ulang kode?' : 'Tunggu $_counter detik',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}