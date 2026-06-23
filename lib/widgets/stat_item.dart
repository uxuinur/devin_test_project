import 'package:flutter/material.dart';

class StatItem extends StatelessWidget {
  final String number;
  final String label;

  const StatItem({required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFFF5F5F7),
            fontFamily: 'Outfit',
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Color(0xFF6b6b80),
            fontFamily: 'DM Sans',
          ),
        ),
      ],
    );
  }
}
