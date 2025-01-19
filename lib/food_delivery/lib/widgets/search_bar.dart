import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5), // Посветла нијанса за позадина
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.search, // Користи Flutter икона
                  color: Color(0xFF666666),
                  size: 28,
                ),
                const SizedBox(width: 16),
                const Text(
                  'Search',
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            // Овде можете да додадете функционалност за клик
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: const Icon(
              Icons.filter_list, // Користи икона за "филтер"
              color: Colors.white,
              size: 28,
            ),
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
//
// class SearchBarWidget extends StatelessWidget {
//   const SearchBarWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//             decoration: BoxDecoration(
//               color: const Color(0xFFF5F5F5), // Посветла нијанса за позадина
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: const [
//                 BoxShadow(
//                   color: Colors.black12,
//                   blurRadius: 8,
//                   offset: Offset(2, 2),
//                 ),
//               ],
//             ),
//             child: Row(
//               children: [
//                 const Icon(
//                   Icons.search, // Икона за лупа
//                   color: Color(0xFF666666),
//                   size: 28,
//                 ),
//                 const SizedBox(width: 16),
//                 const Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: 'Search', // Текст во полето за пребарување
//                       border: InputBorder.none,
//                       hintStyle: TextStyle(
//                         color: Color(0xFF666666),
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         const SizedBox(width: 20),
//         GestureDetector(
//           onTap: () {
//             // Логика за жолтата икона
//             print("Жолтата икона е притисната!");
//           },
//           child: Container(
//             width: 50,
//             height: 50,
//             decoration: BoxDecoration(
//               color: Colors.yellow, // Жолта позадина
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: const [
//                 BoxShadow(
//                   color: Colors.black26,
//                   blurRadius: 8,
//                   offset: Offset(2, 2),
//                 ),
//               ],
//             ),
//             child: const Icon(
//               Icons.search, // Икона за лупа
//               color: Colors.black, // Црна боја за иконата
//               size: 28,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
