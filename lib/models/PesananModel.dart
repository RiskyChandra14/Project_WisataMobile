import 'dart:math';

Random random = Random();


class Pesananmodel {
  final int id, price, jumlah;
  final List<String>? image;
  final String name, kategori;

  Pesananmodel({
    required this.id,
    required this.name,
    required this.image,

    required this.kategori,
    required this.jumlah,
    required this.price,
  });
}

List<Pesananmodel> listPesanan = [
   Pesananmodel(
      id: 1,
      name: 'Venices Explorer',
      image: [
       "https://ucarecdn.com/8fc4b79f-2a82-48c4-a218-8aa87e98a785/Group30.png"
      ],
      kategori: 'Tiket Masuk',
      jumlah: 5,
      price: 75,
   
   ),
   Pesananmodel(
      id: 1,
      name: 'Resto Sunda',
      image: [
       "https://ucarecdn.com/ca5ddeb4-f13b-4815-bc41-72b288cb8d0c/th2.jpg"
      ],
      kategori: 'Nasi Liwet',
      jumlah: 1,
      price: 75,
   ),
   Pesananmodel(
      id: 1,
      name: 'Wahana Carousel',
      image: [
       "https://ucarecdn.com/43bfff00-25c2-446b-8705-c07aba56ec33/Group28.png"
      ],
      kategori: 'Tiket Wahana Carousel',
      jumlah: 5,
      price: 35,
   ),

];
