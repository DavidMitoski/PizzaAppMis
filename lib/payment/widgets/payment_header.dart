import 'package:flutter/material.dart';

class PaymentHeader extends StatelessWidget {
  const PaymentHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20), // Спуштање на компонентата надолу
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back_ios, // Стрелка на лево
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context); // Враќање назад при клик
            },
          ),
          const SizedBox(width: 10), // Простор помеѓу стрелката и текстот
          const Text(
            'Payment',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
