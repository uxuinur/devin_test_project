import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final IconData iconData;
  final bool hasBadge;

  const BottomNavItem({
    required this.label,
    required this.isSelected,
    required this.onTap,
    required this.iconData,
    this.hasBadge = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Icon(
                    iconData,
                    color: isSelected
                        ? const Color(0xFF8b5cf6)
                        : const Color(0xFF6b6b80),
                    size: 22,
                  ),
                  if (hasBadge)
                    Positioned(
                      right: -4,
                      top: -4,
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFFec4899),
                        ),
                        child: const Center(
                          child: Text(
                            '4',
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: isSelected
                      ? const Color(0xFF8b5cf6)
                      : const Color(0xFF6b6b80),
                  fontFamily: 'DM Sans',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
