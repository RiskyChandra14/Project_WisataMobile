import 'package:flutter/material.dart';
// import 'package:tb_pemrograman_mobile/Profile.dart';
import 'package:tb_pemrograman_mobile/models/KulinerModel.dart';
import 'package:tb_pemrograman_mobile/models/VeniceModel.dart';
import 'package:tb_pemrograman_mobile/models/WahanaModel.dart';
import 'package:tb_pemrograman_mobile/screens/detailmenu.dart';
import 'package:tb_pemrograman_mobile/screens/detailrekom.dart';
import 'package:tb_pemrograman_mobile/screens/detailwahana.dart';
import 'package:tb_pemrograman_mobile/screens/detailwisata.dart';
import 'package:tb_pemrograman_mobile/screens/editprofile.dart';
import 'package:tb_pemrograman_mobile/screens/forum.dart';
// import 'package:tb_pemrograman_mobile/screens/itinerary.dart';
import 'package:tb_pemrograman_mobile/screens/itineraryMain.dart';
import 'package:tb_pemrograman_mobile/screens/kulinerScreen.dart';
import 'package:tb_pemrograman_mobile/screens/login.dart';
import 'package:tb_pemrograman_mobile/screens/pesanan.dart';
import 'package:tb_pemrograman_mobile/screens/profile.dart';
// import 'package:tb_pemrograman_mobile/screens/splash_screen.dart';
import 'package:tb_pemrograman_mobile/widgets/kulinerPop.dart';
import 'package:tb_pemrograman_mobile/widgets/rekomPop.dart';
// import 'package:tb_pemrograman_mobile/widgets/venice_explorer.dart';
import 'package:tb_pemrograman_mobile/widgets/wahanaPop.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedPage = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // Daftar data VeniceModel
  List<VeniceModel> rekomPopuler = listVenices;
  List<WahanaModel> wahana = listWahana;
   List<KulinerModel> kuliner = listKuliner;
  List<IconData> icons = [
    Icons.home_filled,
    Icons.info,
    Icons.access_time,
    Icons.restaurant,
    Icons.shopping_cart_outlined,
    Icons.chat,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'Hi, Vallen',
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
                  Navigator.pushReplacement(
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
     backgroundColor: Color(0xFFF0F3F5),
      body: Column(
        children: [
          // Kotak pencarian di bawah AppBar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.search, color: Colors.grey),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Cari Wahana Dan Kuliner",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Daftar Horizontal Destinasi Venice
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 15),
          //     child: Row(
          //       children: List.generate(
          //         venice.length,
          //         (index) => Padding(
          //           padding: const EdgeInsets.only(right: 15),
          //           child: GestureDetector(
          //             onTap: () {
          //               // Aksi ketika destinasi ditekan
          //               print("Destinasi diklik!");
          //             },
          //             child: VeniceExplorer(veniceModel: venice[index]),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
            Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Wahana Populer',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Lihat Semua',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: List.generate(
                  rekomPopuler.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              DetailWahana(wahana: wahana[index]),
                        ),
                      );
                      },
                      child: Wahanapop(wahanaPopuler: wahana[index]),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kuliner Terdekat',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Lihat Semua',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: List.generate(
                  kuliner.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => menuScreen(
                               kuliner : kuliner[index]),
                          ),
                       );
                      },
                      child: Kulinerpop(kulinerPopuler: kuliner[index]),
                    ),
                  ),
                ),
              ),
            ),
          ),
           SizedBox(height: 30,),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rekomendasi Untukmu',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Lihat Semua',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: List.generate(
                  rekomPopuler.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetailRekomendasi(
                               rekomPopuler:rekomPopuler[index]),
                          ),
                       );
                      },
                      child: Rekompop(rekomPopuler:rekomPopuler[index]),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 63,),
        
         // Bagian Bawah
          // Expanded(
          //   child: Align(
          //     alignment: Alignment.bottomCenter,
          //     child: Column(
          //       mainAxisSize: MainAxisSize.min,
          //       children: [
          //         Container(
          //           padding: const EdgeInsets.only(bottom: 15),
          //           child: Column(
          //             children: [
          //               Container(
          //                 padding: const EdgeInsets.symmetric(
          //                   horizontal: 10,
          //                   vertical: 18,
          //                 ),
          //                 decoration: BoxDecoration(
          //                   gradient: const LinearGradient(
          //                     begin: Alignment.topCenter,
          //                     end: Alignment.bottomCenter,
          //                     colors: [Color(0xFF55B967), Color(0xFF277999)],
          //                   ),
          //                   borderRadius: const BorderRadius.only(
          //                     topLeft: Radius.circular(30),
          //                     topRight: Radius.circular(30),
          //                   ),
          //                 ),
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   children: List.generate(
          //                     icons.length,
          //                     (index) => GestureDetector(
          //                       onTap: () {
          //                         setState(() {
          //                           selectedPage = index;
          //                         switch (selectedPage) {
          //                           case 0:
          //                             Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___,) => Homepage()));
          //                             break;
          //                           case 1:
          //                             Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___,) => Detailwisata()));
          //                             break;
          //                           case 2:
          //                             Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder: (_,__,___,) => LoginPage()));
          //                             break;
          //                           default:
          //                         }
          //                         });
          //                       },
          //                       child: Icon(
          //                         icons[index],
          //                         size: 32,
          //                         color: selectedPage == index
          //                             ? Colors.white
          //                             : Colors.white.withOpacity(0.4),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          navbar(),
         
        ],
      ),
    );
  }
  
  Widget navbar() {
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
                switch (selectedPage) {
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
              });
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
  
}
