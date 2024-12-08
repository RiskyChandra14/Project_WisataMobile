import 'package:flutter/material.dart';
import 'package:tb_pemrograman_mobile/models/makanan_model.dart';

class MakananCard extends StatelessWidget {
  final MakananModel makananModel;
  const MakananCard({super.key, required this.makananModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      elevation: 20,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: ListTile(
          leading: Image.network(makananModel.strMealThumb),
          title: Text(
            makananModel.strMeal,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Harga: Rp ${makananModel.harga}',
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500),
          ),
          trailing: IconButton(
            icon: Icon(Icons.add, color: Colors.blue),
            onPressed: () {
              // Menampilkan pop-up konfirmasi
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Tambahkan ke Keranjang'),
                    content: Text(
                        'Apakah Anda yakin ingin menambahkan ${makananModel.strMeal} ke keranjang?'),
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
                              '${makananModel.strMeal} ditambahkan ke keranjang.');
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
