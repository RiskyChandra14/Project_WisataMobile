import 'dart:math';

Random random = Random();

class VeniceModel {
  final int id;
  final List<String>? image;
  final String name;
  final double rate;

  VeniceModel({
    required this.id,
    required this.image,
    required this.name,
    required this.rate,
  });
}


List<VeniceModel> listVenices = [
   VeniceModel(
      id: 1,
      name: "Bumper Boat",
      image: [
       "https://ucarecdn.com/e96b3fa1-0527-451e-b02d-af16fc2baf10/Group27.png"
      ],
      rate: 4.3,
   ),
   VeniceModel(
      id: 1,
       name: 'Kuliner Ar Razaq',
      image: [
       "https://ucarecdn.com/3ec10a85-a4a7-4e1d-98c8-cbe58e82e67b/th3.jpeg"
      ],
       rate: 4.3,
   ),
   VeniceModel(
      id: 1,
      name: "Carousel",
      image: [
       "https://ucarecdn.com/43bfff00-25c2-446b-8705-c07aba56ec33/Group28.png"
      ],
       rate: 4.3,
   ),

];
