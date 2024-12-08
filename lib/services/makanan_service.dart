import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:tb_pemrograman_mobile/models/makanan_model.dart';

class MakananService {
  // Link API untuk mengambil data makanan seafood
  final String baseUrl =
      "https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood";

  Future<List<MakananModel>> fetchMakanan() async {
    // Mengakses API menggunakan method GET
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      // Membaca semua data response dan mengubah ke format JSON
      final data = json.decode(response.body);

      //Membaca berdasarkan key 'meals' dari JSON
      final List mealsKey = data['meals'];

      //Mengembalikan list data makanan yang sudah dikonversi ke model MakananModel
      log("$mealsKey.map((makanan) => MakananModel.fromJson(makanan)).toList()");
      return mealsKey.map((makanan) => MakananModel.fromJson(makanan)).toList();
    } else {
      throw Exception("Gagal Memuat API!");
    }
  }
}
