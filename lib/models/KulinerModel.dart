import 'dart:math';

Random random = Random();
const description =
    'Terdapat berbagai kuliner khas Cianjur, enak unik dan bikin ketagihan. Yuk jajan di Cianjur.';

class KulinerModel {
  final int id, diskon, review;
  final List<String>? image;
  final String name, description, location;
  final double rate;

  KulinerModel({
    required this.id,
    required this.name,
    required this.image,
    required this.rate,
    required this.location,
    required this.review,
    required this.diskon,
    required this.description,
  });
}

List<KulinerModel> listKuliner = [
   KulinerModel(
      id: 1,
      name: 'The Garden Cafe',
      image: [
       "https://ucarecdn.com/419de946-dc2c-4f52-a1f3-f8e4913b30fd/The_Garden_Cafe_St_Anns_Well_Gardens_Brighton_2014.jpg"
      ],
      location: 'Cipanas Cianjur, Jawa Barat',
      review: random.nextInt(250) + 20,
      diskon: 45,
      description: description,
      rate: 4.3,
   ),
   KulinerModel(
      id: 1,
      name: 'Resto Sunda',
      image: [
       "https://ucarecdn.com/ca5ddeb4-f13b-4815-bc41-72b288cb8d0c/th2.jpg"
      ],
      location: 'Gadog Cianjur, Jawa Barat',
      review: random.nextInt(250) + 20,
      diskon: 35,
      description: description,
      rate: 4.3,
   ),
   KulinerModel(
      id: 1,
      name: 'Kuliner Ar Razaq',
      image: [
       "https://ucarecdn.com/3ec10a85-a4a7-4e1d-98c8-cbe58e82e67b/th3.jpeg"
      ],
      location: 'Cimacan Cianjur, Jawa Barat',
      review: random.nextInt(250) + 20,
      diskon: 25,
      description: description,
      rate: 4.3,
   ),

];
