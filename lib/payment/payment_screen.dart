// import 'package:flutter/material.dart';
// import 'package:newfigmapizza/payment/widgets/credit_card.dart';
// import 'package:newfigmapizza/payment/widgets/payment_header.dart';
// import 'package:newfigmapizza/payment/widgets/payment_info.dart';
//
//
// class PaymentScreen extends StatelessWidget {
//   const PaymentScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           constraints: const BoxConstraints(maxWidth: 480),
//           padding: const EdgeInsets.symmetric(horizontal: 18),
//           child: Column(
//             children: const [
//               PaymentHeader(),
//               SizedBox(height: 37),
//               CreditCard(),
//               SizedBox(height: 88),
//               PaymentInfo(),
//               SizedBox(height: 52),
//               NextButton(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class NextButton extends StatelessWidget {
//   const NextButton({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.centerRight,
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 7),
//         decoration: BoxDecoration(
//           color: const Color(0xFF434343),
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: const [
//             BoxShadow(
//               offset: Offset(2, 2),
//               blurRadius: 20,
//               color: Color.fromRGBO(0, 0, 0, 0.175),
//             ),
//           ],
//         ),
//         child: const Text(
//           'NEXT',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//             fontWeight: FontWeight.w700,
//             letterSpacing: 0.63,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:newfigmapizza/payment/widgets/credit_card.dart';
import 'package:newfigmapizza/payment/widgets/payment_header.dart';
import 'package:newfigmapizza/payment/widgets/payment_info.dart';
import 'package:newfigmapizza/location_search/location_search_screen.dart'; // Додај го импортот за location_search_screen.dart

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 480),
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: const [
              PaymentHeader(),
              SizedBox(height: 37),
              CreditCard(),
              SizedBox(height: 88),
              PaymentInfo(),
              SizedBox(height: 52),
              NextButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          // Пренасочување кон location_search_screen.dart
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LocationSearchScreen()),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 7),
          decoration: BoxDecoration(
            color: const Color(0xFF434343),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 20,
                color: Color.fromRGBO(0, 0, 0, 0.175),
              ),
            ],
          ),
          child: const Text(
            'NEXT',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.63,
            ),
          ),
        ),
      ),
    );
  }
}
