import 'package:flutter/material.dart';

class SizeSelector extends StatelessWidget {
  const SizeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _SizeOption(
            size: '8 inch',
            isSelected: true,
          ),
          _SizeOption(
            size: '20 inch',
            isSelected: false,
          ),
          _SizeOption(
            size: '32 inch',
            isSelected: false,
          ),
        ],
      ),
    );
  }
}

class _SizeOption extends StatelessWidget {
  final String size;
  final bool isSelected;

  const _SizeOption({
    Key? key,
    required this.size,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(17, 8, 17, 16),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFF434343) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(isSelected ? 0.175 : 0.15),
            blurRadius: isSelected ? 20 : 15,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Text(
        size,
        style: TextStyle(
          fontSize: isSelected ? 18 : 16,
          color: isSelected ? Colors.white : Color(0xFF959595),
          fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
          letterSpacing: isSelected ? 0.63 : 0.56,
        ),
      ),
    );
  }
}