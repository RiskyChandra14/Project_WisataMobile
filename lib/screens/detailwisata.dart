import 'package:flutter/material.dart';
import 'package:tb_pemrograman_mobile/models/VeniceModel2.dart';
import 'package:tb_pemrograman_mobile/models/WahanaModel.dart';
// import 'package:tb_pemrograman_mobile/models/veniceModel.dart';
import 'package:tb_pemrograman_mobile/screens/editprofile.dart';
import 'package:tb_pemrograman_mobile/screens/forum.dart';
import 'package:tb_pemrograman_mobile/screens/homepage.dart';
// import 'package:tb_pemrograman_mobile/screens/itinerary.dart';
import 'package:tb_pemrograman_mobile/screens/itineraryMain.dart';
import 'package:tb_pemrograman_mobile/screens/kulinerScreen.dart';
import 'package:tb_pemrograman_mobile/screens/login.dart';
import 'package:tb_pemrograman_mobile/screens/pesanan.dart';
import 'package:tb_pemrograman_mobile/screens/profile.dart';
import 'package:tb_pemrograman_mobile/widgets/venice_explorer.dart';
// import 'package:tb_pemrograman_mobile/widgets/wahanaPop.dart';

class Detailwisata extends StatefulWidget {
  const Detailwisata({super.key});

  @override
  State<Detailwisata> createState() => _DetailWisataState();
}

class _DetailWisataState extends State<Detailwisata> {
  int selectedPage = 1;
 final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<VeniceModel2> venice = listVenices2;
  List<WahanaModel> wahana = listWahana;
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
          'Detail Wisata',
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
      body: Column(
        children: [
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: List.generate(
                  venice.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {
                        print("Destinasi diklik!");
                      },
                      child: VeniceExplorer(veniceModel: venice[index]),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: const TabBar(
                      labelColor: Colors.blue,
                      labelStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.blue,
                      dividerColor: Colors.transparent,
                      tabs: [
                        Tab(
                          text: 'Deskripsi',
                        ),
                        Tab(
                          text: "Review",
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(height: 10),
                  Expanded(
                    child: TabBarView(
                      children: [
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              "Little Venice Kota Bunga, Cianjur adalah destinasi wisata unik yang terletak di kawasan Puncak, Jawa Barat. "
                              "Tempat ini menawarkan pengalaman berwisata dengan suasana yang menyerupai kota Venesia di Italia, lengkap dengan kanal-kanal air yang indah, gondola, "
                              "dan bangunan bergaya arsitektur Eropa klasik. Wisatawan dapat menikmati suasana romantis sambil menyusuri kanal menggunakan gondola, serta menikmati "
                              "pemandangan sekitar yang memukau. \n\n"
                              "Selain itu, terdapat juga berbagai wahana permainan dan restoran yang menambah daya tarik tempat ini. Anda dapat mencoba berbagai aktivitas seru, seperti berfoto dengan latar bangunan Eropa, menaiki perahu bersama keluarga, "
                              "atau sekadar menikmati pemandangan sambil bersantai. \n\n"
                              "Bagi Anda yang gemar kuliner, terdapat beragam pilihan makanan mulai dari hidangan lokal hingga menu khas Italia. "
                              "Little Venice juga menjadi tempat favorit untuk mengadakan acara seperti pesta ulang tahun atau pre-wedding photoshoot. "
                              "Dengan fasilitas yang lengkap dan suasana yang memikat, tempat ini menjanjikan pengalaman yang tak terlupakan untuk semua pengunjungnya.",
                              style: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                        const Center(
                          child: Text("Tidak Ada Review"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 70,
            width: 385,
            margin: const EdgeInsets.only(bottom: 30), 
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Harga',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Rp.75.000',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                color: Colors.blueAccent,
                              ),
                            ),
                            TextSpan(
                              text: ' / Orang',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Tambahkan ke Keranjang'),
                    content: Text(
                        'Apakah Anda yakin ingin menambahkan ke keranjang?'),
                    actions: [
                      TextButton(
                        child: Text('Batal'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: Text('Ya'),
                        onPressed: () {
                          // Tambahkan ke keranjang
                          print(
                              ' ditambahkan ke keranjang.');
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
                  },
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                          size: 14,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Masukkan Keranjang',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          navbar(),
          // SizedBox(height: 15,),
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
