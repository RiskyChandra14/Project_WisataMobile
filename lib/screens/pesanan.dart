import 'package:flutter/material.dart';
import 'package:tb_pemrograman_mobile/models/KulinerModel.dart';
import 'package:tb_pemrograman_mobile/models/PesananModel.dart';
import 'package:tb_pemrograman_mobile/models/WahanaModel.dart';
import 'package:tb_pemrograman_mobile/models/veniceModel.dart';
import 'package:tb_pemrograman_mobile/screens/detailwisata.dart';
import 'package:tb_pemrograman_mobile/screens/editprofile.dart';
import 'package:tb_pemrograman_mobile/screens/forum.dart';
import 'package:tb_pemrograman_mobile/screens/homepage.dart';
import 'package:tb_pemrograman_mobile/screens/itineraryMain.dart';
import 'package:tb_pemrograman_mobile/screens/kulinerScreen.dart';
import 'package:tb_pemrograman_mobile/screens/login.dart';
import 'package:tb_pemrograman_mobile/screens/profile.dart';
import 'package:tb_pemrograman_mobile/widgets/kuliner.dart';
import 'package:tb_pemrograman_mobile/widgets/pesanan.dart';
import 'package:tb_pemrograman_mobile/widgets/rekomPop.dart';
import 'package:tb_pemrograman_mobile/widgets/venice_explorer.dart';

class Pesanan extends StatefulWidget {
  const Pesanan({super.key});

  @override
  State<Pesanan> createState() => _PesananState();
}

class _PesananState extends State<Pesanan> {
  int selectedPage = 4;

  List<VeniceModel> venice = listVenices;
  List<WahanaModel> wahana = listWahana;
  List<Pesananmodel> pesanan = listPesanan;
  List<IconData> icons = [
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
          'Pesanan',
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
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 100,
                    child: const TabBar(
                      labelColor: Colors.blue,
                      labelStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.blue,
                      dividerColor: Colors.transparent,
                      tabs: [
                        Tab(
                          text: 'Semua',
                        ),
                        Tab(
                          text: "Belum Bayar",
                        ),
                         Tab(
                          text: "Selesai",
                        ),
                      ],
                    ),
                  ),
                   const SizedBox(height: 10),
                  Expanded(
                    child: TabBarView(
                      children: [
                       SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: List.generate(
                  pesanan.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                      //  Navigator.push(
                          //context,
                          // MaterialPageRoute(
                          //   builder: (_) => DetailDestinasi(
                          //       destination: rekomendasi[index]),
                          // ),
                     //   );
                      },
                      child: Pesananku(
                          pesanan: pesanan[index]),
                    ),
                  ),
                ),
              ),
            ),
          
                        const Center(
                          child: Text("Tidak Ada Pembayaran"),
                        ),
                        const Center(
                          child: Text("Tidak Ada Pesanan"),
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
                        'Jumlah yang harus dibayar',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Rp.490.000',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                color: Colors.blueAccent,
                              ),
                            ),
                            TextSpan(
                              text: '',
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
                    title: Text('Checkout Sekarang?'),
                    content: Text(
                        'Apakah Anda yakin ingin mencheckout pesanan ini?'),
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
                              'Pesanan Berhasil Di Checkout.');
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
                          'Checkout',
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
