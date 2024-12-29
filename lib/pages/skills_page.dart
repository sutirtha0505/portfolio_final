import 'package:flutter/material.dart';
import 'dart:ui';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                const Text(
                  'My Skills',
                  style: TextStyle(
                    fontSize: 44.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                const SizedBox(height: 40),
                // Container with height 120
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12.0), // Add padding from top and bottom
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0), // Round corners
                    color: Colors.white10, // Background color
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Makes the height adaptive to content
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/icons/internet.png', // Replace with your image asset path
                            width: 34, // Set the desired width
                            height: 34, // Set the desired height
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Web ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                          const Text(
                            'Development',
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30), // Additional spacing between rows if needed
                      Wrap(
                        alignment: WrapAlignment.center, // Center the containers
                        spacing: 10, // Horizontal spacing
                        runSpacing: 10, // Vertical spacing
                        children: List.generate(11, (index) {
                          return Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2), // Semi-transparent background
                              borderRadius: BorderRadius.circular(10), // Curved border
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3), // Border color for the glass effect
                                width: 1,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Apply blur
                                child: Container(
                                  alignment: Alignment.center, // Align children in the center if needed
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.1), // Additional overlay for depth
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'assets/icons/webdev_${index + 1}.png', // Dynamically load images
                                    height: 50,
                                    width: 50, // Set the desired width and height
                                    fit: BoxFit.cover,// Ensure the image fits within the container
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                // Add more widgets as needed
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12.0), // Add padding from top and bottom
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0), // Round corners
                    color: Colors.blueGrey[900], // Background color
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Makes the height adaptive to content
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/icons/responsive-design.png', // Replace with your image asset path
                            width: 34, // Set the desired width
                            height: 34, // Set the desired height
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Cross-platform ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                          const Text(
                            'Development',
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30), // Additional spacing between rows if needed
                      Wrap(
                        alignment: WrapAlignment.center, // Center the containers
                        spacing: 10, // Horizontal spacing
                        runSpacing: 10, // Vertical spacing
                        children: List.generate(4, (index) {
                          return Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2), // Semi-transparent background
                              borderRadius: BorderRadius.circular(10), // Curved border
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3), // Border color for the glass effect
                                width: 1,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Apply blur
                                child: Container(
                                  alignment: Alignment.center, // Align children in the center if needed
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.1), // Additional overlay for depth
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'assets/icons/cross_platform_${index + 1}.png', // Dynamically load images
                                    height: 50,
                                    width: 50, // Set the desired width and height
                                    fit: BoxFit.cover,// Ensure the image fits within the container
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
                // Add more widgets as needed
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12.0), // Add padding from top and bottom
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0), // Round corners
                    color: Colors.white10, // Background color
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Makes the height adaptive to content
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/icons/server.png', // Replace with your image asset path
                            width: 34, // Set the desired width
                            height: 34, // Set the desired height
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Scalable ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                          const Text(
                            'Deployment',
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30), // Additional spacing between rows if needed
                      Wrap(
                        alignment: WrapAlignment.center, // Center the containers
                        spacing: 10, // Horizontal spacing
                        runSpacing: 10, // Vertical spacing
                        children: List.generate(5, (index) {
                          return Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2), // Semi-transparent background
                              borderRadius: BorderRadius.circular(10), // Curved border
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3), // Border color for the glass effect
                                width: 1,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Apply blur
                                child: Container(
                                  alignment: Alignment.center, // Align children in the center if needed
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.1), // Additional overlay for depth
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'assets/icons/deployment_${index + 1}.png', // Dynamically load images
                                    height: 50,
                                    width: 50, // Set the desired width and height
                                    fit: BoxFit.fitWidth,// Ensure the image fits within the container
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
                // Add more widgets as needed
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12.0), // Add padding from top and bottom
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0), // Round corners
                    color: Colors.blueGrey[900], // Background color
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Makes the height adaptive to content
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/icons/ui.png', // Replace with your image asset path
                            width: 34, // Set the desired width
                            height: 34, // Set the desired height
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'UI/UX ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                          const Text(
                            'Designing',
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30), // Additional spacing between rows if needed
                      Wrap(
                        alignment: WrapAlignment.center, // Center the containers
                        spacing: 10, // Horizontal spacing
                        runSpacing: 10, // Vertical spacing
                        children: List.generate(6, (index) {
                          return Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2), // Semi-transparent background
                              borderRadius: BorderRadius.circular(10), // Curved border
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3), // Border color for the glass effect
                                width: 1,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Apply blur
                                child: Container(
                                  alignment: Alignment.center, // Align children in the center if needed
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.1), // Additional overlay for depth
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'assets/icons/ui_${index + 1}.png', // Dynamically load images
                                    height: 50,
                                    width: 50, // Set the desired width and height
                                    fit: BoxFit.cover,// Ensure the image fits within the container
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
                // Add more widgets as needed
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12.0), // Add padding from top and bottom
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0), // Round corners
                    color: Colors.white10, // Background color
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Makes the height adaptive to content
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/icons/cyber-attack.png', // Replace with your image asset path
                            width: 34, // Set the desired width
                            height: 34, // Set the desired height
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Ethical ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                          const Text(
                            'Hacking',
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30), // Additional spacing between rows if needed
                      Wrap(
                        alignment: WrapAlignment.center, // Center the containers
                        spacing: 10, // Horizontal spacing
                        runSpacing: 10, // Vertical spacing
                        children: List.generate(4, (index) {
                          return Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2), // Semi-transparent background
                              borderRadius: BorderRadius.circular(10), // Curved border
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3), // Border color for the glass effect
                                width: 1,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Apply blur
                                child: Container(
                                  alignment: Alignment.center, // Align children in the center if needed
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.1), // Additional overlay for depth
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'assets/icons/hacking_${index + 1}.png', // Dynamically load images
                                    height: 50,
                                    width: 50, // Set the desired width and height
                                    fit: BoxFit.fitWidth,// Ensure the image fits within the container
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
                // Add more widgets as needed
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12.0), // Add padding from top and bottom
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0), // Round corners
                    color: Colors.blueGrey[900], // Background color
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Makes the height adaptive to content
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/icons/database.png', // Replace with your image asset path
                            width: 34, // Set the desired width
                            height: 34, // Set the desired height
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Server ',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                          const Text(
                            'Management',
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30), // Additional spacing between rows if needed
                      Wrap(
                        alignment: WrapAlignment.center, // Center the containers
                        spacing: 10, // Horizontal spacing
                        runSpacing: 10, // Vertical spacing
                        children: List.generate(2, (index) {
                          return Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2), // Semi-transparent background
                              borderRadius: BorderRadius.circular(10), // Curved border
                              border: Border.all(
                                color: Colors.white.withOpacity(0.3), // Border color for the glass effect
                                width: 1,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Apply blur
                                child: Container(
                                  alignment: Alignment.center, // Align children in the center if needed
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.1), // Additional overlay for depth
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'assets/icons/server_${index + 1}.png', // Dynamically load images
                                    height: 50,
                                    width: 50, // Set the desired width and height
                                    fit: BoxFit.cover,// Ensure the image fits within the container
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                const SizedBox(height: 120),
                // Add more widgets as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
