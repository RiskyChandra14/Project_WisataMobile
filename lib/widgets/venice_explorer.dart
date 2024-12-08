import 'package:flutter/material.dart';
// import 'package:tb_pemrograman_mobile/models/KulinerModel.dart';
import 'package:tb_pemrograman_mobile/models/VeniceModel2.dart';
// import 'package:tb_pemrograman_mobile/models/veniceModel.dart';

class VeniceExplorer extends StatelessWidget {
  final VeniceModel2 veniceModel;
  const VeniceExplorer({super.key, required this.veniceModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Positioned(
          bottom: 0,
          right: 20,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.3),
                  spreadRadius: 7,
                  blurRadius: 8,
                ),
              ],
            ),
          ),
        ),
         ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 125,
            width: MediaQuery.of(context).size.width * 0.55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  veniceModel.image![0],
                ),
              ),
            ),
          ),
         ),
      ],
    );
  }
}