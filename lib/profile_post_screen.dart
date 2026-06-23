import 'package:flutter/material.dart';
import 'widgets/stat_item.dart';
import 'widgets/action_button.dart';
import 'widgets/stats_card.dart';
import 'widgets/tab_navigation.dart';
import 'widgets/grid_image.dart';
import 'widgets/bottom_navigation_bar_custom.dart';
import 'profile_selling_screen.dart';

class ProfilePostScreen extends StatefulWidget {
  const ProfilePostScreen({super.key});

  @override
  State<ProfilePostScreen> createState() => _ProfilePostScreenState();
}

class _ProfilePostScreenState extends State<ProfilePostScreen> {
  int _selectedTabIndex = 0;
  int _selectedBottomNavIndex = 4;

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
                  if (index == 1) {
                    // Navigate to Selling screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileSellingScreen(),
                      ),
                    );
                  } else {
                    setState(() {
                      _selectedTabIndex = index;
                    });
                  }
                },
              ),
              // Image Grid
              Padding(
                padding: const EdgeInsets.all(0),
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 1,
                  children: [
                    GridImage(
                      imageUrl:
                          'https://www.figma.com/api/mcp/asset/796d56ca-5451-4a19-bd37-338fb7a694bf',
                    ),
                    GridImage(
                      imageUrl:
                          'https://www.figma.com/api/mcp/asset/bd225ebe-1432-426b-b5b4-2754f1be673b',
                    ),
                    GridImage(
                      imageUrl:
                          'https://www.figma.com/api/mcp/asset/917c03f3-61b4-4467-b71a-952c77afe4fe',
                    ),
                    GridImage(
                      imageUrl:
                          'https://www.figma.com/api/mcp/asset/63ac6df6-650f-44d8-943c-8378d6dfff0e',
                    ),
                    GridImage(
                      imageUrl:
                          'https://www.figma.com/api/mcp/asset/b8fe91f3-4b45-42bf-be26-9ccee1ad0a16',
                    ),
                    GridImage(
                      imageUrl:
                          'https://www.figma.com/api/mcp/asset/70800b66-84dd-464a-9c7f-15322f8cf618',
                    ),
                  ],
                ),
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
