import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top Bar
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Logo & Title
                  Row(
                    children: [
                      Image.asset('assets/icons/slice.png', height: 24),
                      const Gap(4),
                      const Text(
                        'Pizza',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF4900C),
                        ),
                      ),
                    ],
                  ),

                  // Location Selector
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Color(0xFFF4900C),
                      ),
                      const Text(
                        'Cairo,',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      const Gap(4),
                      Image.asset('assets/icons/fg.png', height: 20),
                      const Icon(Icons.keyboard_arrow_down),
                    ],
                  ),

                  // Favorite with Notification Badge
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFDFDFDF),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Icon(
                          Icons.favorite_border_outlined,
                          size: 24,
                        ),
                      ),
                      Positioned(
                        top: -4,
                        right: -4,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            '3',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Promo Banner
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEAE6DF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  right: 30,
                  top: 8,
                  child: Image.asset('assets/images/girl.png', height: 100),
                ),
                Positioned(
                  top: 30,
                  left: 30,
                  child: Row(
                    children: [
                      Image.asset('assets/icons/fire.png', height: 24),
                      const Gap(8),
                      const Text(
                        'Hot Deals!',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF4900C),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
