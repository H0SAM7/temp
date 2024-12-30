import 'package:broker/core/utils/assets.dart';
import 'package:flutter/material.dart';

class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);
static String id='RealEstateSearchScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], // Background around the card
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              Assets.imagesBackground, // Replace with your image URL
              fit: BoxFit.cover,
            ),
          ),
          // Main Card
          Positioned(
            left: 16,
            right: 16,
            top: MediaQuery.of(context).size.height * 0.2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Header Text
                    const Text(
                      'منزلك المثالي\nبإنتظارك!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Location Input
                    Row(
                      children: [
                        const Icon(Icons.place, color: Colors.blue),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'حدد المكان المناسب',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    // Property Type Input
                    Row(
                      children: [
                        const Icon(Icons.home, color: Colors.blue),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'حدد نوع العقار',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    // Price Input
                    Row(
                      children: [
                        const Icon(Icons.attach_money, color: Colors.blue),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'حدد السعر المناسب',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Search Button
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text(
                        'بحث',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Bottom Navigation Buttons
          Positioned(
            left: 0,
            right: 0,
            bottom: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildBottomButton('منزل', Icons.house),
                _buildBottomButton('فيلا', Icons.apartment),
                _buildBottomButton('شقة', Icons.home),
                _buildBottomButton('قطعة', Icons.landscape),
                _buildBottomButton('قبلا', Icons.map),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomButton(String title, IconData icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(height: 4),
        Text(
          title,
          style: const TextStyle(color: Colors.blue, fontSize: 12),
        ),
      ],
    );
  }
}
