
import 'package:flutter/material.dart';
import 'package:tb_pemrograman_mobile/models/KulinerModel.dart';

class RekomendasiKuliner extends StatelessWidget {
  final KulinerModel kuliner;
  const RekomendasiKuliner({
    super.key,
    required this.kuliner,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Container(
            height: 85,
            width: 95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(kuliner.image![0]),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  kuliner.name,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                      size: 14,
                    ),
                    Text(
                      kuliner.location,
                      style: TextStyle(
                        fontSize: 9,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.yellow[800],
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "${kuliner.rate} ",
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: "(${kuliner.review} reviews)",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              const Spacer(),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Diskon ${kuliner.diskon}%",
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                    // TextSpan(
                    //   text: "/Orang",
                    //   style: TextStyle(
                    //       fontSize: 10, color: Colors.black.withOpacity(0.6)),
                    // ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
