import 'package:flutter/material.dart';
import 'package:tb_pemrograman_mobile/Profile.dart';
import 'package:tb_pemrograman_mobile/screens/detailwisata.dart';
import 'package:tb_pemrograman_mobile/screens/forum.dart';
import 'package:tb_pemrograman_mobile/screens/homepage.dart';
import 'package:tb_pemrograman_mobile/screens/login.dart';
import 'package:tb_pemrograman_mobile/screens/profile.dart';
import 'package:tb_pemrograman_mobile/screens/regist.dart';
import 'package:tb_pemrograman_mobile/screens/splash_screen.dart';
import 'package:tb_pemrograman_mobile/screens/verifikasi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
