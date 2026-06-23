import 'package:flutter/material.dart';
import 'tab_item.dart';

class TabNavigation extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChanged;

  const TabNavigation({
    required this.selectedIndex,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF08080a),
        border: Border(
          bottom: BorderSide(
            color: Colors.white.withAlpha(18),
            width: 1.2,
          ),
        ),
      ),
      child: Row(
        children: [
          TabItem(
            label: 'Posts',
            isSelected: selectedIndex == 0,
            onTap: () => onTabChanged(0),
          ),
          TabItem(
            label: 'Selling',
            isSelected: selectedIndex == 1,
            onTap: () => onTabChanged(1),
          ),
          TabItem(
            label: 'Saved',
            isSelected: selectedIndex == 2,
            onTap: () => onTabChanged(2),
          ),
          TabItem(
            label: 'Activity',
            isSelected: selectedIndex == 3,
            onTap: () => onTabChanged(3),
          ),
        ],
      ),
    );
  }
}
