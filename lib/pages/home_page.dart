import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> words = ['Web Developer', 'Software Developer', 'UI/UX Designer', 'Dev Ops Manager', 'Ethical Hacker', 'Software PenTester'];
  int currentWordIndex = 0;
  String displayedText = '';
  bool isAdding = true;

  @override
  void initState() {
    super.initState();
    _animateText();
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrangeAccent.withOpacity(0.6),
                      blurRadius: 70,
                      spreadRadius: 10,
                      offset: const Offset(0, 7),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage('assets/images/me.jpeg'),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Hello, I am",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'MyFont',
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Tirtharaj Karmakar",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MyFont',
                  color: Colors.deepOrangeAccent,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                displayedText,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MyFont',
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "I am a Web Developer specializing in Next.js with strong backend expertise in Supabase. I have proficiency in React.js, jQuery, Angular.js, Node.js, PHP, MySQL, and cross-platform development with React Native. I also have experience in Docker, Kubernetes, cybersecurity, ethical hacking, design tools, and Active Directory server setups.",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'MyFont',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/cv.png',
                      width: 30,
                      height: 30,
                    ),
                    label: const Text(
                      'Download CV',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'MyFont'),
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.pressed)) {
                            return Colors.deepOrangeAccent;
                          }
                          return Colors.white;
                        },
                      ),
                      foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/candidate.png',
                      width: 30,
                      height: 30,
                    ),
                    label: const Text(
                      'Hire Me',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'MyFont'),
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.pressed)) {
                            return Colors.white;
                          }
                          return Colors.deepOrangeAccent;
                        },
                      ),
                      foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
