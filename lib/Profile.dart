import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Profile(),
        ]),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412,
          height: 917,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFF0F3F5)),
          child: Stack(
            children: [
              Positioned(
                left: 19,
                top: 14,
                child: Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: -5,
                top: 106,
                child: Container(
                  width: 417.28,
                  height: 212,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 87.22,
                        top: 27.23,
                        child: Container(
                          width: 241.13,
                          height: 148.94,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 56.44,
                                top: -0,
                                child: Container(
                                  width: 128.26,
                                  height: 120.11,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 128.26,
                                          height: 120.11,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF979797),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 27.36,
                                        top: 22.42,
                                        child: Container(
                                          width: 73.54,
                                          height: 75.27,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 15.21,
                                                top: 12.08,
                                                child: Container(
                                                  width: 41.70,
                                                  height: 47.71,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 11.88,
                                                        top: 32.76,
                                                        child: Container(
                                                          width: 16.64,
                                                          height: 14.95,
                                                          child: Stack(),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 28.91,
                                                        top: 14.66,
                                                        child: Container(
                                                          width: 12.79,
                                                          height: 21.47,
                                                          child: Stack(),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        top: 14.66,
                                                        child: Container(
                                                          width: 12.79,
                                                          height: 21.47,
                                                          child: Stack(),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 6.38,
                                                        top: 0,
                                                        child: Container(
                                                          width: 29.22,
                                                          height: 21.29,
                                                          child: Stack(),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 14.67,
                                                        top: 15.85,
                                                        child: Container(
                                                          width: 13.10,
                                                          height: 3.88,
                                                          child: Stack(),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 129.72,
                                child: SizedBox(
                                  width: 241.13,
                                  height: 19.22,
                                  child: Text(
                                    'Vallen',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 478,
                child: Container(
                  width: 390,
                  height: 64,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 11.19,
                        top: 22.40,
                        child: SizedBox(
                          width: 139.06,
                          height: 28.80,
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 554,
                child: Container(
                  width: 390,
                  height: 64,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 11.19,
                        top: 22.40,
                        child: SizedBox(
                          width: 139.06,
                          height: 28.80,
                          child: Text(
                            'Simpan',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 632,
                child: Container(
                  width: 390,
                  height: 64,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 11.19,
                        top: 22.40,
                        child: SizedBox(
                          width: 139.06,
                          height: 28.80,
                          child: Text(
                            'Pengaturan',
                            style: TextStyle(
                              color: Color(0xFF140C47),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 347.19,
                        top: 19.20,
                        child: Container(
                          width: 23.78,
                          height: 25.60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(""),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 707,
                child: Container(
                  width: 390,
                  height: 64,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 11.19,
                        top: 22.40,
                        child: SizedBox(
                          width: 139.06,
                          height: 28.80,
                          child: Text(
                            'Bantuan',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 342.44,
                        top: 15.36,
                        child: Container(
                          width: 29.73,
                          height: 32,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/30x32"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 782,
                child: Container(
                  width: 390,
                  height: 64,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 11.19,
                        top: 22.40,
                        child: SizedBox(
                          width: 139.06,
                          height: 28.80,
                          child: Text(
                            'Keluar Akun',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 349.57,
                        top: 21.76,
                        child: Container(
                          width: 20.21,
                          height: 21.76,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/20x22"),
                              fit: BoxFit.fill,
                            ),
                          ),
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
    );
  }
}
