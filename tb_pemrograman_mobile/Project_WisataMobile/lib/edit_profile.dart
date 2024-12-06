import 'package:flutter/material.dart';

void main() {
  runApp(const EditProfile());
}

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent, // Membuat background transparan
          elevation: 0, // Menghilangkan bayangan
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(
                  context); // Fungsi untuk kembali ke layar sebelumnya
            },
          ),
        ),
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

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // Variabel untuk menyimpan pilihan gender
  String _selectedGender = 'Perempuan';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header Section with Title and Profile Picture
          Container(
            width: double.infinity,
            color: Color(0xFFF0F3F5), // Background abu-abu muda
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Judul "Edit Profile"
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                InkWell(
                  onTap: () {
                    print('Foto Profil Ditekan');
                  },
                  child: Container(
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
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    // Aksi ketika nama ditekan
                    print('Nama Ditekan');
                    // Anda bisa menavigasi ke halaman edit nama, misalnya
                  },
                  child: Text(
                    'Guest2213455',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Profil Info Section
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nama
                InkWell(
                  onTap: () {
                    // Aksi ketika nama inputan ditekan
                    print('Nama Input Ditekan');
                    // Misalnya, membuka halaman untuk mengedit nama
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      TextFormField(
                        initialValue: 'Guest2213455',
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),

                // Nomor Telepon
                InkWell(
                  onTap: () {
                    // Aksi ketika nomor telepon inputan ditekan
                    print('Nomor Telepon Input Ditekan');
                    // Anda bisa menavigasi ke halaman untuk edit nomor telepon
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nomor Telepon',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      TextFormField(
                        initialValue: '+62 821-4325-6478',
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),

                // Email
                InkWell(
                  onTap: () {
                    // Aksi ketika email inputan ditekan
                    print('Email Ditekan');
                    // Anda bisa menavigasi ke halaman untuk edit email
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      TextFormField(
                        initialValue: 'Guest2201@gmail.com',
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),

                // Gender
                InkWell(
                  onTap: () {
                    // Aksi ketika gender ditekan
                    print('Gender Ditekan');
                    // Misalnya, menampilkan dialog atau membuka halaman pengaturan gender
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jenis Kelamin',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio<String>(
                            value: 'Perempuan',
                            groupValue: _selectedGender,
                            onChanged: (value) {
                              setState(() {
                                _selectedGender = value!;
                              });
                            },
                          ),
                          Text(
                            'Perempuan',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 20),
                          Radio<String>(
                            value: 'Laki-laki',
                            groupValue: _selectedGender,
                            onChanged: (value) {
                              setState(() {
                                _selectedGender = value!;
                              });
                            },
                          ),
                          Text(
                            'Laki-laki',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Button Section for actions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: [
                buildMenuItem('Edit Profile', Icons.edit),
                SizedBox(height: 8),
                buildMenuItem('Simpan', Icons.save),
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
      ),
    );
  }

  // Helper function for creating button items
  Widget buildMenuItem(String title, IconData icon) {
    return InkWell(
      onTap: () {
        print('$title ditekan');
        // Ganti dengan aksi yang diinginkan
      },
      child: Container(
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
      ),
    );
  }
}
