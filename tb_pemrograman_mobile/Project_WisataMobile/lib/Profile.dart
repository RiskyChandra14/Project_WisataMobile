import 'package:flutter/material.dart';

void main() {
  runApp(const Profile_Screen());
}

class Profile_Screen extends StatelessWidget {
  const Profile_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(),
        body: Profile(),
        bottomNavigationBar: Container(
          height: 80, // Height of the navigation bar
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.topLeft,
              colors: [Color(0xFF56B968), Color(0xFF277999)],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavIcon('Beranda', Icons.home),
              _buildNavIcon('Itinerary', Icons.event),
              _buildNavIcon('Kuliner', Icons.restaurant),
              _buildNavIcon('Pesanan', Icons.receipt),
              _buildNavIcon('Forum', Icons.forum),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavIcon(String label, IconData icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.white, size: 30),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12, // Small font for footer text
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header Section with Title and Profile Picture
        Container(
          width: double.infinity,
          color: Color(0xFFF0F3F5), // Background abu-abu muda
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Judul "Profile"
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Foto Profil dalam Container Putih
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white, // Background putih
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://ucarecdn.com/666ee453-755e-4ea1-829c-0f5a66bd0fa7/4e6db91800a04e8f8180632002a952de.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Guest2213455',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              // Nomor Telepon
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 24,
                    color: Colors.black,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '+62 821-4325-6478',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10), // Spasi antar elemen
              // Email
              Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 24,
                    color: Colors.black,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Guest2201@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // Button Section
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16),
            children: [
              buildMenuItem('Edit Profile', Icons.arrow_forward),
              SizedBox(height: 8),
              buildMenuItem('Simpan', Icons.bookmark),
              SizedBox(height: 8),
              buildMenuItem('Pengaturan', Icons.settings),
              SizedBox(height: 8),
              buildMenuItem('Bantuan', Icons.help),
              SizedBox(height: 8),
              buildMenuItem('Keluar Akun', Icons.logout),
            ],
          ),
        ),
      ],
    );
  }

  // Helper function for creating button items
  Widget buildMenuItem(String title, IconData icon) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          Icon(
            icon,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
