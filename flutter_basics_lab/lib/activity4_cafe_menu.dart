import 'package:flutter/material.dart';
import 'student.dart';

void main() {
  runApp(const CafeApp());
}

class CafeApp extends StatelessWidget {
  const CafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Activity 4",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: studentColor,
      ),
      home: const CafeMenuPage(),
    );
  }
}




class CafeMenuPage extends StatelessWidget {
  const CafeMenuPage({super.key});

  final List<Map<String, dynamic>> menuItems = const [
    {
      'name': 'Iced Coffee',
      'price': 85,
      'icon': Icons.local_cafe,
      'bestSeller': true,
    },
    {
      'name': 'Chicken Sandwich',
      'price': 120,
      'icon': Icons.lunch_dining,
      'bestSeller': false,
    },
    {
      'name': 'Chocolate Cake',
      'price': 95,
      'icon': Icons.cake,
      'bestSeller': false,
    },
    {
      'name': 'Fruit Smoothie',
      'price': 100,
      'icon': Icons.local_drink,
      'bestSeller': false,
    },
    {
      'name': 'Cheese Burger',
      'price': 130,
      'icon': Icons.fastfood,
      'bestSeller': false,
    },
    {
      'name': 'French Fries',
      'price': 60,
      'icon': Icons.restaurant,
      'bestSeller': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 48,
        title: const Text(
          'Activity 4 - Campus Café',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(6),
            color: Colors.brown.shade100,
            child: const Column(
              children: [
                Icon(Icons.local_cafe, size: 28),
                Text(
                  'Campus Café',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Fresh food and drinks for students',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: menuItems.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 145,
              ),
              itemBuilder: (context, index) {
                final item = menuItems[index];

                return Card(
                  margin: EdgeInsets.zero,
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(6, 18, 6, 6),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                item['icon'] as IconData,
                                size: 30,
                                color: Colors.brown,
                              ),
                              const SizedBox(height: 6),
                              Text(
                                item['name'] as String,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '₱${item['price']}',
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (item['bestSeller'] as bool)
                        Positioned(
                          top: 4,
                          left: 4,
                          right: 4,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Text(
                              'BEST SELLER',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
