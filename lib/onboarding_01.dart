import 'package:flutter/material.dart';

const String imgVector =
    'https://www.figma.com/api/mcp/asset/c599a441-27e4-49f5-820e-332b9126d6a3';
const String imgBackgroundComplete =
    'https://www.figma.com/api/mcp/asset/0d54590d-c2b6-4346-80d8-e0415f10295e';
const String imgBackgroundSimple =
    'https://www.figma.com/api/mcp/asset/9a27b58c-6cc5-42a3-9da2-2466aab503c2';
const String imgShadow =
    'https://www.figma.com/api/mcp/asset/f8fafcc2-b5e3-4ca5-9719-cc651c2fe907';
const String imgPlant =
    'https://www.figma.com/api/mcp/asset/3c165436-4a0e-4fe5-a472-5b33320bd455';
const String imgFloor =
    'https://www.figma.com/api/mcp/asset/235a24c3-0b56-457b-b52f-93dfe69b54a6';
const String imgDevice =
    'https://www.figma.com/api/mcp/asset/68215abe-d7eb-4e5a-8058-3228d6e33c55';
const String imgCharacter =
    'https://www.figma.com/api/mcp/asset/24d71ac1-d01d-4746-9245-39feaf32330a';
const String imgPost =
    'https://www.figma.com/api/mcp/asset/51ce6ff4-1781-4e57-837e-8d4aabe9d9a0';

bool _isFlutterTest = false;

void enableFlutterTestMode() {
  assert(() {
    _isFlutterTest = true;
    return true;
  }());
}

Widget _buildFigmaImage(
  String url, {
  double? width,
  double? height,
  BoxFit fit = BoxFit.cover,
}) {
  if (_isFlutterTest) {
    return Container(
      width: width,
      height: height,
      color: const Color(0xFFF5F5F5),
    );
  }

  return Image.network(
    url,
    width: width,
    height: height,
    fit: fit,
    errorBuilder: (context, error, stackTrace) {
      return Container(
        width: width,
        height: height,
        color: const Color(0xFFF5F5F5),
      );
    },
    loadingBuilder: (context, child, loadingProgress) {
      if (loadingProgress == null) return child;
      return Container(
        width: width,
        height: height,
        color: const Color(0xFFF5F5F5),
      );
    },
  );
}

class Onboarding01 extends StatelessWidget {
  const Onboarding01({super.key});

  @override
  Widget build(BuildContext context) {
    const Color background = Color(0xFFFAFAFA);
    const Color primary = Color(0xFF2B7FFF);
    const Color textDark = Color(0xFF171717);
    const Color textSecondary = Color(0xFF404040);

    final screenWidth = MediaQuery.of(context).size.width;
    final contentWidth = screenWidth - 40;

    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 34,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.04),
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: _buildFigmaImage(
                          imgVector,
                          width: 18,
                          height: 18,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: const Color(0xFF737373),
                            width: 1,
                          ),
                        ),
                      ),
                      child: Text(
                        'Skip',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF737373),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 420,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned.fill(
                        child: _buildFigmaImage(
                          imgBackgroundComplete,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: contentWidth * 0.1,
                        top: 20,
                        right: contentWidth * 0.1,
                        child: _buildFigmaImage(
                          imgBackgroundSimple,
                          fit: BoxFit.cover,
                          width: contentWidth * 0.8,
                        ),
                      ),
                      Positioned(
                        left: contentWidth * 0.1,
                        top: 70,
                        child: _buildFigmaImage(
                          imgPlant,
                          width: contentWidth * 0.32,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        left: contentWidth * 0.46,
                        bottom: 24,
                        child: _buildFigmaImage(
                          imgFloor,
                          width: contentWidth * 0.34,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        left: contentWidth * 0.08,
                        bottom: 10,
                        child: _buildFigmaImage(
                          imgShadow,
                          width: contentWidth * 0.38,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        left: contentWidth * 0.18,
                        top: 40,
                        right: contentWidth * 0.18,
                        child: _buildFigmaImage(
                          imgDevice,
                          fit: BoxFit.contain,
                          width: contentWidth * 0.64,
                        ),
                      ),
                      Positioned(
                        left: contentWidth * 0.23,
                        bottom: 30,
                        child: _buildFigmaImage(
                          imgCharacter,
                          width: contentWidth * 0.42,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        top: 100,
                        right: 12,
                        child: _buildFigmaImage(
                          imgPost,
                          width: contentWidth * 0.36,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 12),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '?',
                      style: TextStyle(
                        color: Color(0xFF2B7FFF),
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Discover through content',
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: textDark,
                        height: 1.05,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Find products you love through real posts from real people. Shop the feed.',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: textSecondary,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Container(
                      width: 32,
                      height: 8,
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 12,
                      height: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD4D4D4),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 12,
                      height: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD4D4D4),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 12,
                      height: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD4D4D4),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 56,
                      height: 56,
                      decoration: const BoxDecoration(
                        color: primary,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
