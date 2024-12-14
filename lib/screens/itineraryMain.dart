import 'package:flutter/material.dart';
import 'package:tb_pemrograman_mobile/screens/detailwisata.dart';
import 'package:tb_pemrograman_mobile/screens/editprofile.dart';
import 'package:tb_pemrograman_mobile/screens/forum.dart';
import 'package:tb_pemrograman_mobile/screens/homepage.dart';
import 'package:tb_pemrograman_mobile/screens/itinerary.dart';
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
      home: const ItineraryMainScreen(),
    );
  }
}

class ItineraryMainScreen extends StatefulWidget {
  const ItineraryMainScreen({super.key});

  @override
  _ItineraryScreenState createState() => _ItineraryScreenState();
}

class _ItineraryScreenState extends State<ItineraryMainScreen> {
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
        child: Column(
          children: [
            // Header Section
            // Container(
            //   width: double.infinity,
            //   padding: const EdgeInsets.symmetric(vertical: 30),
            //   decoration: BoxDecoration(
            //     gradient: const LinearGradient(
            //       begin: Alignment.topRight,
            //       end: Alignment.topLeft,
            //       colors: [Color(0xFF56B968), Color(0xFF277999)],
            //     ),
            //     borderRadius: BorderRadius.circular(25),
            //   ),
            //   child: const Text(
            //     'Itinerary',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       fontSize: 30,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            Expanded(
              child: Row(
                children: [
                  // Itinerary List Section
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Trip Title
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: const Text(
                              'Trip Title',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),

                          // List of Itineraries
                          Expanded(
                            child: ListView(
                              children: [
                                _buildItineraryItem(
                                  time: '05:49',
                                  title: 'Bumper Boat',
                                  description: 'Bring some food',
                                ),
                                _buildItineraryItem(
                                  time: '07:00',
                                  title: 'Little Venice Food Court',
                                  description:
                                      "Don't forget to try the chicken",
                                ),
                                _buildItineraryItem(
                                  time: '09:50',
                                  title: 'Gondola',
                                  description: 'Bring the camera',
                                ),
                                _buildItineraryItem(
                                  time: '12:49',
                                  title: 'Lunch',
                                  description: 'Eat till full',
                                ),
                                _buildItineraryItem(
                                  time: '15:49',
                                  title: 'Kapal Mississippi',
                                  description: 'Free time',
                                ),
                                _buildItineraryItem(
                                  time: '19:00',
                                  title: 'Kuliner AR RAZAQ',
                                  description: 'Check our luggage',
                                ),
                                _buildItineraryItem(
                                  time: '20:30',
                                  title: 'Home',
                                  description: 'Bring all our stuff',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Days Navigation
                  Container(
                    width: 80,
                    color: Colors.white,
                    child: ListView.builder(
                      itemCount: 7, // Number of days
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: index == 0
                                  ? const Color(0xFF56B968)
                                  : Colors.grey[200], // Highlight first day
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '${index + 1}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color:
                                      index == 0 ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
  floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
          context,
          PageRouteBuilder(pageBuilder: (_, __, ___) => const ItineraryScreen()),
        );
        },
        backgroundColor: const Color.fromARGB(255, 240, 240, 241),
        child: const Icon(Icons.add, size: 30),
      ),

      bottomNavigationBar: _buildNavbar(),
    );
  }
Widget _buildItineraryItem({
    required String time,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          // Time Container
          Container(
            width: 70,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFF56B968),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                time,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),

          // Title and Description
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
