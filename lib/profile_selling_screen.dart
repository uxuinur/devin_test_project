import 'package:flutter/material.dart';
import 'widgets/stat_item.dart';
import 'widgets/action_button.dart';
import 'widgets/stats_card.dart';
import 'widgets/tab_navigation.dart';
import 'widgets/bottom_navigation_bar_custom.dart';
import 'widgets/selling_item_card.dart';

class ProfileSellingScreen extends StatefulWidget {
  const ProfileSellingScreen({super.key});

  @override
  State<ProfileSellingScreen> createState() => _ProfileSellingScreenState();
}

class _ProfileSellingScreenState extends State<ProfileSellingScreen> {
  int _selectedTabIndex = 1; // Selling tab selected
  int _selectedBottomNavIndex = 4;

  final List<Map<String, dynamic>> sellingItems = [
    {
      'image':
          'https://www.figma.com/api/mcp/asset/5c3ae6d4-5e41-49cc-b662-d07e3c893774',
      'title': 'Vintage Denim Jacket',
      'price': '\$89',
      'status': 'Active',
      'isSold': false,
    },
    {
      'image':
          'https://www.figma.com/api/mcp/asset/cd9567d0-f2e1-4fef-9ab3-0bbd8076bc28',
      'title': 'Canvas Tote Set',
      'price': '\$45',
      'status': 'Sold',
      'isSold': true,
    },
    {
      'image':
          'https://www.figma.com/api/mcp/asset/6dff1e56-c761-4b02-9197-5fa6c375f6bf',
      'title': 'Silk Scarf',
      'price': '\$35',
      'status': 'Active',
      'isSold': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF08080a),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '@nova.style',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFF5F5F7),
                        fontFamily: 'Outfit',
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.settings,
                        color: Color(0xFFF5F5F7),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              // Profile Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    // Avatar and Stats
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Avatar
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFF8b5cf6),
                              width: 2.5,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://www.figma.com/api/mcp/asset/d6751dda-298f-4ddd-855d-146c4192a565',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              // Badge
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFF8b5cf6),
                                    border: Border.all(
                                      color: const Color(0xFF08080a),
                                      width: 1.2,
                                    ),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Stats
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              StatItem(number: '847', label: 'Posts'),
                              StatItem(number: '24.1K', label: 'Followers'),
                              StatItem(number: '312', label: 'Following'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Name and Bio
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Nova Styles ✨',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFF5F5F7),
                            fontFamily: 'DM Sans',
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          'Fashion creator & vintage curator',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF6b6b80),
                            fontFamily: 'DM Sans',
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'vibemarket.co/nova',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFF8b5cf6),
                            fontFamily: 'DM Sans',
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Action Buttons
                    Row(
                      children: [
                        Expanded(
                          child: ActionButton(
                            label: 'Edit Profile',
                            backgroundColor: const Color(0xFF1a1a20),
                            textColor: const Color(0xFFF5F5F7),
                            hasBorder: true,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: ActionButton(
                            label: 'Earnings',
                            backgroundColor: const Color(0xFF8b5cf6),
                            textColor: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: ActionButton(
                            label: 'Share',
                            backgroundColor: const Color(0xFF1a1a20),
                            textColor: const Color(0xFFF5F5F7),
                            hasBorder: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Stats Cards
                    Row(
                      children: [
                        StatsCard(
                          value: '\$1,240',
                          label: 'Sales',
                          valueColor: const Color(0xFF8b5cf6),
                        ),
                        const SizedBox(width: 12),
                        StatsCard(
                          value: '4.9 ★',
                          label: 'Rating',
                          valueColor: const Color(0xFFf59e0b),
                        ),
                        const SizedBox(width: 12),
                        StatsCard(
                          value: '12 live',
                          label: 'Items',
                          valueColor: const Color(0xFF10b981),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              // Tab Navigation
              TabNavigation(
                selectedIndex: _selectedTabIndex,
                onTabChanged: (index) {
                  if (index == 0) {
                    // Navigate back to Posts screen
                    Navigator.pop(context);
                  } else {
                    setState(() {
                      _selectedTabIndex = index;
                    });
                  }
                },
              ),
              // Selling Items List
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: sellingItems.length,
                itemBuilder: (context, index) {
                  final item = sellingItems[index];
                  return SellingItemCard(
                    imageUrl: item['image'],
                    title: item['title'],
                    price: item['price'],
                    status: item['status'],
                    isSold: item['isSold'],
                  );
                },
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarCustom(
        selectedIndex: _selectedBottomNavIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedBottomNavIndex = index;
          });
        },
      ),
    );
  }
}
