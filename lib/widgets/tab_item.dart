import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const TabItem({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: isSelected
                      ? const Color(0xFF8b5cf6)
                      : const Color(0xFF6b6b80),
                  fontFamily: 'DM Sans',
                ),
              ),
            ),
            if (isSelected)
              Container(
                height: 2,
                color: const Color(0xFF8b5cf6),
              ),
          ],
        ),
      ),
    );
  }
}
