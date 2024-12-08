
import 'package:flutter/material.dart';
import 'package:tb_pemrograman_mobile/models/KulinerModel.dart';
import 'package:tb_pemrograman_mobile/models/makanan_model.dart';
import 'package:tb_pemrograman_mobile/services/makanan_service.dart';
import 'package:tb_pemrograman_mobile/widgets/makanan_card.dart';

class menuScreen extends StatelessWidget {
  final MakananService _makananService = MakananService();
   final KulinerModel kuliner;
  menuScreen({super.key, required this.kuliner});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daftar Menu',
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
      body: FutureBuilder<List<MakananModel>>(
        future: _makananService.fetchMakanan(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Error : ${snapshot.error}"),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: Text("Tidak ada makanan yang tersedia"),
            );
          } else {
            final makanan = snapshot.data!;
            return ListView.builder(
              itemBuilder: (context, index) {
                return MakananCard(makananModel: makanan[index]);
              },
              itemCount: makanan.length,
            );
          }
        },
      ),
    );
  }
}
