import 'package:flutter/material.dart';
import 'regist.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Splash(),
        ]),
      ),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RegistPage()),
      );
    });

    return Column(
      children: [
        Container(
          width: 500,
          height: 920,
          padding: const EdgeInsets.symmetric(vertical: 128),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF55B967), Color(0xFF277999)],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 480,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://ucarecdn.com/dedda0fc-4ce3-4958-9383-9abf54d3ee0b/GIFTRANSFARAN.gif"),
                    fit: BoxFit.fill,
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
