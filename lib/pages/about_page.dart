import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'dart:async';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});

  @override
  _AboutMePageState createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  double _xRotation = 0.0;
  double _yRotation = 0.0;
  late StreamSubscription<AccelerometerEvent> _subscription;

  final List<String> words = [
    'Web Developer', 'Software Developer', 'UI/UX Designer', 'Dev Ops Manager', 'Ethical Hacker', 'Software PenTester'
  ];
  int currentWordIndex = 0;
  String displayedText = '';
  bool isAdding = true;

  @override
  void initState() {
    super.initState();
    _subscription = accelerometerEvents.listen((AccelerometerEvent event) {
      _updateTilt(event.x, event.y);
    });
    _animateText(); // Start the typewriter animation
  }

  void _updateTilt(double x, double y) {
    const double dampingFactor = 0.2; // Smooth movement
    const double tiltScalingFactor = 20.0; // Reduced tilt effect
    setState(() {
      _xRotation = _xRotation + (y / tiltScalingFactor - _xRotation) * dampingFactor;
      _yRotation = _yRotation + (-x / tiltScalingFactor - _yRotation) * dampingFactor;
    });
  }

  void _animateText() async {
    while (true) {
      final currentWord = words[currentWordIndex];
      if (isAdding) {
        for (int i = 0; i <= currentWord.length; i++) {
          setState(() {
            displayedText = currentWord.substring(0, i);
          });
          await Future.delayed(const Duration(milliseconds: 150));
        }
        await Future.delayed(const Duration(seconds: 1));
        isAdding = false;
      } else {
        for (int i = currentWord.length; i >= 0; i--) {
          setState(() {
            displayedText = currentWord.substring(0, i);
          });
          await Future.delayed(const Duration(milliseconds: 100));
        }
        await Future.delayed(const Duration(milliseconds: 500));
        isAdding = true;
        currentWordIndex = (currentWordIndex + 1) % words.length;
      }
    }
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Transform(
            transform: Matrix4.identity()
              ..rotateX(_xRotation)
              ..rotateY(_yRotation),
            alignment: FractionalOffset.center,
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Container(
                width: 350,
                height: 450,
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[900], // Set the card's background color
                  borderRadius: BorderRadius.circular(16.0), // Match card shape
                ),
                child: Stack(
                  clipBehavior: Clip.none, // Allow overflowing children
                  alignment: Alignment.topCenter, // Align the overflowing widget
                  children: [
                    Positioned(
                      top: -80, // Position the image to overflow above the container
                      child: Container(
                        width: 140,
                        height: 140,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/me.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    // Content inside the container
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 80), // Space to adjust for the avatar
                        const Text(
                          'Tirtharaj Karmakar',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          displayedText,
                          style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          "Developer specializing in Next.js, Supabase, React.js, Node.js, and cross-platform development. Expertise in Docker, Kubernetes, cybersecurity, ethical hacking, and Active Directory setups.",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 40),
                        // Row with 3 clickable social icons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/linkedin.png', // Replace with your image path
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 20),
                            Image.asset(
                              'assets/icons/gmail.png', // Replace with your image path
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 20),
                            Image.asset(
                              'assets/icons/github.png', // Replace with your image path
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
