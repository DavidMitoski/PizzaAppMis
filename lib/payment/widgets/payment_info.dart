import 'package:flutter/material.dart';

class PaymentInfo extends StatelessWidget {
  const PaymentInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Почитуван/a,\nВе информираме дека плаќањето ќе се изврши при доставата\nна самата врата. За Ваша удобност, плаќањето ќе може да се изврши\nсо платежен терминал на лице место. Ве молиме да се осигурате дека\nВашата платежна картичка е активна и подготвена за безбедно и\nедноставно завршување на процесот.\nСо благодарност за Вашата доверба и со нетрпение очекуваме да\nги исполниме Вашите очекувања.',
      style: TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.w600,
        fontFamily: 'Inter',
      ),
    );
  }
}