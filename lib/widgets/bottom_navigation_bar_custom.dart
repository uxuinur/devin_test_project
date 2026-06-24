import 'package:flutter/material.dart';
import 'bottom_nav_item.dart';
import 'floating_action_button_custom.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const BottomNavigationBarCustom({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF08080a).withAlpha(235),
        border: Border(
          top: BorderSide(
            color: Colors.white.withAlpha(15),
            width: 1.2,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavItem(
            label: 'Home',
            isSelected: selectedIndex == 0,
            onTap: () => onItemSelected(0),
            iconData: Icons.home,
          ),
          BottomNavItem(
            label: 'Shop',
            isSelected: selectedIndex == 1,
            onTap: () => onItemSelected(1),
            iconData: Icons.shopping_bag,
          ),
          FloatingActionButtonCustom(
            onTap: () => onItemSelected(2),
          ),
          BottomNavItem(
            label: 'Messages',
            isSelected: selectedIndex == 3,
            onTap: () => onItemSelected(3),
            iconData: Icons.mail,
            hasBadge: true,
          ),
          BottomNavItem(
            label: 'Profile',
            isSelected: selectedIndex == 4,
            onTap: () => onItemSelected(4),
            iconData: Icons.person,
          ),
        ],
      ),
    );
  }
}
