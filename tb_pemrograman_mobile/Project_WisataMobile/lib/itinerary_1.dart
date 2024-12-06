import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable debug banner
      theme: ThemeData.light(),
      home: const ItineraryScreen(),
    );
  }
}

class ItineraryScreen extends StatelessWidget {
  const ItineraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    vertical: 30), // Larger padding for header
                decoration: BoxDecoration(
                  gradient: LinearGradient(
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
                    fontSize: 30, // Larger font size for header
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Trip Title TextField
              Container(
                height: 60, // Adjusted height
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xFF818181)),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Trip Title',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Itinerary Location Section
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xFF818181)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Itinerary Location Header
                    Row(
                      children: [
                        const Icon(Icons.location_on,
                            size: 28, color: Color(0xFF277999)),
                        const SizedBox(width: 8),
                        const Text(
                          'Itinerary Location',
                          style: TextStyle(
                            color: Color(0xFF777777),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    // Location Note TextField
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Add Note',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 12),

                    // Location Time TextField
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Add Time',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Save Itinerary button
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Color(0xFF140C47),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Center(
                  child: Text(
                    'SAVE ITINERARY',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),

      // Footer Navigation at the bottom of the screen using Align
      bottomNavigationBar: Container(
        height: 80, // Height of the navigation bar
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.topLeft,
            colors: [Color(0xFF56B968), Color(0xFF277999)],
          ),
          borderRadius: BorderRadius.only(
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
    );
  }

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
            fontSize: 12, // Small font for footer text
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
