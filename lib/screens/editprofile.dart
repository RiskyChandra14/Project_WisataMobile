import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  // Controller untuk TextField
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
   final TextEditingController _tgllahirController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Set initial values (jika ada)
    _nameController.text = 'Vallen Marfuah';
    _phoneController.text = '+62 821-4325-6478';
    _emailController.text = 'Vallenmarfuah2201@gmail.com';
    _tgllahirController.text = '32 Januari 2040';
    _alamatController.text = 'Perumahan Atlantis Kec. Konoha';
  }

  @override
  void dispose() {
    // Pastikan untuk dispose controller saat halaman dibuang
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _tgllahirController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF55B967), Color(0xFF277999)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      backgroundColor: const Color(0xFFF0F3F5),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Foto Profil
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          // Tambahkan fungsi untuk mengedit atau mengganti foto
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Edit Foto'),
                                content: const Text(
                                    'Fitur untuk mengganti foto belum tersedia.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Tutup'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.edit, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Nama
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Nama',
                  hintText: 'Masukkan nama Anda',
                ),
              ),
              const SizedBox(height: 16),
              // Nomor Telepon
              TextField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: 'Nomor Telepon',
                  hintText: 'Masukkan nomor telepon Anda',
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              // Email
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Masukkan email Anda',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _tgllahirController,
                decoration: const InputDecoration(
                  labelText: 'Tanggal Lahir',
                  hintText: 'Masukkan Tanggal Lahir Anda',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
               TextField(
                controller: _alamatController,
                decoration: const InputDecoration(
                  labelText: 'Alamat',
                  hintText: 'Masukkan Alamat Anda',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              // Tombol Simpan
              ElevatedButton(
                onPressed: () {
                  // Menyimpan perubahan
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Perubahan Disimpan'),
                        content: const Text('Informasi profil telah diperbarui.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Tutup'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Simpan Perubahan'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 76, 168, 244),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  minimumSize: const Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
