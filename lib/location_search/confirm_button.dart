import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  final VoidCallback? onPressed; // Додадовме onPressed параметар

  const ConfirmButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // Поврзување на onPressed
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF3C5A99),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(vertical: 19),
      ),
      child: const Text(
        'Confirm location',
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20,
          letterSpacing: 0.7,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }
}
