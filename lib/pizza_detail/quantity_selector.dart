import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 236,
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 18),
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Минус икона
          Container(
            width: 21,
            height: 3,
            color: Color(0xFF434343),
          ),
          // Текст за количина
          Text(
            '01',
            style: TextStyle(
              fontSize: 28,
              color: Color(0xFF434343),
              letterSpacing: 0.98,
              fontWeight: FontWeight.w700,
            ),
          ),
          // Плус икона
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: IconButton(
              icon: Icon(Icons.add, color: Color(0xFF434343), size: 24),
              onPressed: () {
                // Логика за додавање количина
              },
            ),
          ),
        ],
      ),
    );
  }
}
