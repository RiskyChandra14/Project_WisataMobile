import 'package:flutter/material.dart';
// import 'package:tb_pemrograman_mobile/models/KulinerModel.dart';
// import 'package:tb_pemrograman_mobile/models/WahanaModel.dart';
import 'package:tb_pemrograman_mobile/models/veniceModel.dart';

class Rekompop extends StatelessWidget {
  final VeniceModel rekomPopuler;
  const Rekompop({super.key, required this.rekomPopuler});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:160,
      width: MediaQuery.of(context).size.width * 0.35,
      margin: const EdgeInsets.symmetric(horizontal: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bagian Gambar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Image.network(
                  rekomPopuler.image![0],
                  height: 85,
                  width: 120, // Atur ukuran gambar agar lebih kecil
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Bagian Nama dan Rating
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  rekomPopuler.name!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [
                      Container(
                        height: 25,
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), // Memberikan jarak dalam container
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 86, 86), // Warna latar abu-abu
                          borderRadius: BorderRadius.circular(15), // Membuat sudut melengkung
                        ),
                        child: Row(
                          children: [
                      const Icon(Icons.star, color: Colors.amber, size: 14),
                      const SizedBox(width: 4), // Jarak antara ikon dan rating
                      Text(
                        rekomPopuler.rate!.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white, // Warna teks yang kontras
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
                                const Icon(
                      Icons.bookmark_border,
                      color: Colors.grey,
                      size: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
