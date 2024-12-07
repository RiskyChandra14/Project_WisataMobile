import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(RegistPage());

class RegistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'venice'),
      color: Colors.green,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RegistPage()),
      );
    });
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF55B967), // Updated AppBar background color
          // Menghapus tombol back dengan menghapus properti `leading`
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
                    'Daftar Akun',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nama',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    obscureText: true,
                  ),
                  // SizedBox(height: 20),
                  // Centered "I accept Privacy Policy + Terms of Use" with checkbox
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Center content horizontally
                    children: [
                      Checkbox(
                        value:
                            _isChecked, // Bind the checkbox to the _isChecked state
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked =
                                value ?? false; // Toggle checkbox state
                          });
                        },
                        activeColor: Color(
                            0xFF37B4FB), // Set checkbox color to blue when checked
                      ),
                      Text(
                        'I Accept Privacy Policy + Terms of Use',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        height: 0.17,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Container(
                        width: 232,
                        height: 15,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 59,
                              top: 8,
                              child: Text(
                                'atau lanjutkan dengan',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                  height: 0.20,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 9,
                              child: Container(
                                width: 55,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      color: Colors
                                          .white, // Change line color to white
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 177,
                              top: 9,
                              child: Container(
                                width: 55,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      color: Colors
                                          .white, // Change line color to white
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 253,
                            height: 35,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 120,
                                    height: 35,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center, // Centered content horizontally
                                      children: [
                                        Icon(
                                          Icons
                                              .g_mobiledata_outlined, // Google icon
                                          size: 30,
                                          color:
                                              Colors.blue, // Google icon color
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'Google',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 133,
                                  top: 0,
                                  child: Container(
                                    width: 120,
                                    height: 35,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center, // Centered content horizontally
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: ShapeDecoration(
                                            color:
                                                Colors.white, // Facebook blue
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons
                                                .facebook_rounded, // Facebook icon
                                            size: 20,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'Facebook',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  // "Sudah memiliki akun? Masuk" link
                  Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Center the text horizontally
                      children: [
                        Text(
                          'Sudah memiliki akun? ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: Text(
                            'Masuk',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors
                                  .white, // Changed color to blue (#0000FF)
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ])
                ])));
  }
}
