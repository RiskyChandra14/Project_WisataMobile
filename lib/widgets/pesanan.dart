import 'package:flutter/material.dart';
import 'package:tb_pemrograman_mobile/models/PesananModel.dart';

class Pesananku extends StatefulWidget {
  final Pesananmodel pesanan;
  const Pesananku({
    super.key,
    required this.pesanan,
  });

  @override
  _PesananState createState() => _PesananState();
}

class _PesananState extends State<Pesananku> {
  bool isChecked = false;

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
                image: NetworkImage(widget.pesanan.image![0]),
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.pesanan.name,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                  
                    Text(
                      widget.pesanan.kategori,
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    
                    Text.rich(
                      TextSpan(
                        children: [
                          
                          TextSpan(
                            text: "( Jumlah : ${widget.pesanan.jumlah})",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Checkbox(
                activeColor: Colors.blue,
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              const Spacer(),
              Text(
                "Total : Rp. ${widget.pesanan.price}.000",
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
