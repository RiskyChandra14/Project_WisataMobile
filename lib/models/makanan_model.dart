import 'dart:math';

class MakananModel {
  final String idMeal;
  final String strMeal;
  final String strMealThumb;
  final double harga;

  MakananModel({
    required this.idMeal,
    required this.strMeal,
    required this.strMealThumb,
    required this.harga,
  });

  // Factory method fromJson
  factory MakananModel.fromJson(Map<String, dynamic> json) {
    return MakananModel(
      idMeal: json['idMeal'],
      strMeal: json['strMeal'],
      strMealThumb: json['strMealThumb'],
      harga: _generateRandomPrice(), // Harga acak
    );
  }

  // Fungsi untuk menghasilkan harga acak
  static double _generateRandomPrice() {
    final random = Random();
    return 10000 + random.nextInt(40001).toDouble(); // Harga antara 10.000 - 50.000
  }
}
