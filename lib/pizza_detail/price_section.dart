import 'package:flutter/material.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF959595),
                  letterSpacing: 0.49,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '500 ден',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF2FB300),
                  letterSpacing: 0.84,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(width: 100),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Add to Cart',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                letterSpacing: 0.7,
                fontWeight: FontWeight.w700,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFFA800),
              padding: EdgeInsets.symmetric(horizontal: 34, vertical: 19),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}