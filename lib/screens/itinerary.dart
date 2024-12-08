import 'package:flutter/material.dart';
import 'package:tb_pemrograman_mobile/screens/detailwisata.dart';
import 'package:tb_pemrograman_mobile/screens/editprofile.dart';
import 'package:tb_pemrograman_mobile/screens/forum.dart';
import 'package:tb_pemrograman_mobile/screens/homepage.dart';
import 'package:tb_pemrograman_mobile/screens/itineraryMain.dart';
import 'package:tb_pemrograman_mobile/screens/kulinerScreen.dart';
import 'package:tb_pemrograman_mobile/screens/login.dart';
import 'package:tb_pemrograman_mobile/screens/pesanan.dart';
import 'package:tb_pemrograman_mobile/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const ItineraryScreen(),
    );
  }
}

class ItineraryScreen extends StatefulWidget {
  const ItineraryScreen({super.key});

  @override
  _ItineraryScreenState createState() => _ItineraryScreenState();
}

class _ItineraryScreenState extends State<ItineraryScreen> {
  int selectedPage = 2;

  final List<IconData> icons = [
    Icons.home_filled,
    Icons.info,
    Icons.access_time,
    Icons.restaurant,
    Icons.shopping_cart_outlined,
    Icons.chat,
  ];
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'Your Itinerary',
          style: TextStyle(color: Colors.black),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF56B968), Color(0xFF277999)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
        ),
        actions: [
              
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
          ),
        ],
      ),
      endDrawer: Align(
        alignment: Alignment.topRight,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          margin: const EdgeInsets.only(
            top: kToolbarHeight + 10,
            bottom: 75,
          ),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const EditProfilePage(),
                      ),
                    );
                    
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const ProfilePage(),
                      ),
                    );
                    
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) =>  LoginPage(),
                      ),
                    );
                    
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF0F3F5),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [Color(0xFF56B968), Color(0xFF277999)],
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Text(
                  'Add Itinerary',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: const Color(0xFF818181)),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Trip Title',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: const Color(0xFF818181)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.location_on,
                            size: 28, color: Color(0xFF277999)),
                        const SizedBox(width: 8),
                        const Text(
                          'Itinerary Location',
                          style: TextStyle(
                            color: Color(0xFF777777),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Add Note',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Add Time',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFF140C47),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Center(
                  child: Text(
                    'SAVE ITINERARY',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildNavbar(),
    );
  }

  Widget _buildNavbar() {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xFF55B967), Color(0xFF277999)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          icons.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedPage = index;
              });
              _navigateToPage(index);
            },
            child: Icon(
              icons[index],
              size: 32,
              color: selectedPage == index
                  ? Colors.white
                  : Colors.white.withOpacity(0.4),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToPage(int index) {
    switch (index) {
       case 0:
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const Homepage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const Detailwisata(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(pageBuilder: (_, __, ___) => const ItineraryMainScreen()),
                    );
                    break;
                  case 3:
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const Kulinerscreen(),
                      ),
                    );
                    break;
                  case 4:
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const Pesanan(),
                      ),
                    );
                    break;
                     case 5:
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const ChatScreen(),
                      ),
                    );
                    break;
                  default:
    }
  }
}
