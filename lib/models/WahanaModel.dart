import 'dart:math';

Random random = Random();
const description =
    'Little Venice Kota Bunga, Cianjur adalah destinasi wisata unik yang terletak di kawasan Puncak, Jawa Barat.';

class WahanaModel{
  final int id, price, review;
  final List<String>? image;
  final String name, description, location;
  final double rate;

  WahanaModel({
    required this.id,
    required this.image,
    required this.name,
    required this.rate,
    required this.location,
    required this.review,
    required this.price,
    required this.description,
  });
}


List<WahanaModel> listWahana = [
   WahanaModel(
      id: 1,
      name: "Bumper Boat",
      image: [
       "https://ucarecdn.com/e96b3fa1-0527-451e-b02d-af16fc2baf10/Group27.png"
      ],
      location: 'Cianjur, Jawa Barat',
      review: random.nextInt(250) + 20,
      price: 45,
      description: description,
      rate: 4.3,
   ),
   WahanaModel(
      id: 1,
      name: "Carousel",
      image: [
       "https://ucarecdn.com/43bfff00-25c2-446b-8705-c07aba56ec33/Group28.png"
      ],
      location: 'Cianjur, Jawa Barat',
      review: random.nextInt(250) + 20,
      price: 35,
      description: description,
      rate:4.5,
   ),
   WahanaModel(
      id: 1,
      name: "Kapal Misisipi",
      image: [
       "https://ucarecdn.com/8fc4b79f-2a82-48c4-a218-8aa87e98a785/Group30.png"
      ],
      location: 'Cianjur, Jawa Barat',
      review: random.nextInt(250) + 20,
      price: 65,
      description: description,
      rate:5.1
   ),

];
