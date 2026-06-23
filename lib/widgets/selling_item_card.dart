import 'package:flutter/material.dart';

class SellingItemCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String status;
  final bool isSold;

  const SellingItemCard({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.status,
    required this.isSold,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF111115),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Item Image
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12),
          // Item Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFF5F5F7),
                    fontFamily: 'DM Sans',
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF8b5cf6),
                    fontFamily: 'Outfit',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          // Status Badge
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: isSold
                  ? const Color(0xFF6b6b80).withAlpha(25)
                  : const Color(0xFF10b981).withAlpha(25),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              status,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: isSold
                    ? const Color(0xFF6b6b80)
                    : const Color(0xFF10b981),
                fontFamily: 'DM Sans',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
