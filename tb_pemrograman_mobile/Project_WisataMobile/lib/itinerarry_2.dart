import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const ItineraryScreen2(),
    );
  }
}

class ItineraryScreen2 extends StatelessWidget {
  const ItineraryScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.topLeft,
                  colors: [Color(0xFF56B968), Color(0xFF277999)],
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Text(
                'Add Itinerary',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  // Itinerary List Section
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Trip Title
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: const Text(
                              'Trip Title',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),

                          // List of Itineraries
                          Expanded(
                            child: ListView(
                              children: [
                                _buildItineraryItem(
                                  time: '05:49',
                                  title: 'Bumper Boat',
                                  description: 'Bring some food',
                                ),
                                _buildItineraryItem(
                                  time: '07:00',
                                  title: 'Little Venice Food Court',
                                  description:
                                      "Don't forget to try the chicken",
                                ),
                                _buildItineraryItem(
                                  time: '09:50',
                                  title: 'Gondola',
                                  description: 'Bring the camera',
                                ),
                                _buildItineraryItem(
                                  time: '12:49',
                                  title: 'Lunch',
                                  description: 'Eat till full',
                                ),
                                _buildItineraryItem(
                                  time: '15:49',
                                  title: 'Kapal Mississippi',
                                  description: 'Free time',
                                ),
                                _buildItineraryItem(
                                  time: '19:00',
                                  title: 'Kuliner AR RAZAQ',
                                  description: 'Check our luggage',
                                ),
                                _buildItineraryItem(
                                  time: '20:30',
                                  title: 'Home',
                                  description: 'Bring all our stuff',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Days Navigation
                  Container(
                    width: 80,
                    color: Colors.white,
                    child: ListView.builder(
                      itemCount: 7, // Number of days
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: index == 0
                                  ? const Color(0xFF56B968)
                                  : Colors.grey[200], // Highlight first day
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '${index + 1}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color:
                                      index == 0 ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Footer Navigation
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.topLeft,
            colors: [Color(0xFF56B968), Color(0xFF277999)],
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavIcon('Beranda', Icons.home),
            _buildNavIcon('Itinerary', Icons.event),
            _buildNavIcon('Kuliner', Icons.restaurant),
            _buildNavIcon('Pesanan', Icons.receipt),
            _buildNavIcon('Forum', Icons.forum),
          ],
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality for adding itinerary
        },
        backgroundColor: const Color.fromARGB(255, 240, 240, 241),
        child: const Icon(Icons.add, size: 30),
      ),
    );
  }

  // Method to Build Each Itinerary Item
  Widget _buildItineraryItem({
    required String time,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          // Time Container
          Container(
            width: 70,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFF56B968),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                time,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),

          // Title and Description
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Method to Build Footer Navigation Icons
  Widget _buildNavIcon(String label, IconData icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.white, size: 30),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
