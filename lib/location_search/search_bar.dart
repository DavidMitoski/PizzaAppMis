import 'package:flutter/material.dart';

class SearchBar2 extends StatelessWidget {
  const SearchBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Ограничување на ширината
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color(0xFF150000), width: 2),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Icon(
            Icons.search, // Вграденa иконка за пребарување
            size: 25,
            color: Colors.black,
          ),
          const SizedBox(width: 8),
          Expanded( // Овозможува TextFormField да го заземе остатокот од просторот
            child: Semantics(
              textField: true,
              label: 'Search location',
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Search location',
                  border: InputBorder.none, // Отстранување на стандардната граница
                  isDense: true, // Компактен изглед
                  contentPadding: EdgeInsets.zero,
                ),
                style: const TextStyle(
                  fontFamily: 'Abel',
                  fontSize: 18,
                  letterSpacing: 0.7,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
