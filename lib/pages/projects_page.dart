import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

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
                  'Recent Projects',
                  style: TextStyle(
                    fontSize: 44.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                const SizedBox(height: 40),

                // Web Development Project
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blueGrey[900],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/icons/internet.png',
                            width: 34,
                            height: 34,
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
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Image.asset(
                          'assets/images/modern_computer.jpeg',
                          height: 300,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: const Text(
                          "This is a Full Stack Web Application for shopping of PC, laptop and related accessories for a shop named Modern Computer. This project is written in:",
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/webdev_1.png",
                            height: 30,
                            width: 30,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "Next.js and ",
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "assets/icons/webdev_6.png",
                            height: 30,
                            width: 30,
                          ),
                          const Text(
                            "Supabase.",
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/icons/ui.png',
                            width: 34,
                            height: 34,
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
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Image.asset(
                          'assets/images/GymRats.jpeg',
                          height: 300,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: const Text(
                          "This is a Full Stack Web Application designing for a project called GymRats for managing a modern gym. This project is designed in:",
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/ui_1.png",
                            height: 30,
                            width: 30,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "Figma and ",
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "assets/icons/ui_5.png",
                            height: 30,
                            width: 30,
                          ),
                          const Text(
                            "Adobe inDesign.",
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                const SizedBox(height: 40),// Web Development Project
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blueGrey[900],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/icons/responsive-design.png',
                            width: 34,
                            height: 34,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Cross-Platform ',
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
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Image.asset(
                          'assets/images/cp.png',
                          height: 300,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: const Text(
                          "These are some screenshots of my full cross platform apps based on mainly Javascript and Dart. This projects are written in:",
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/cross_platform_1.png",
                            height: 30,
                            width: 30,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "React Native and ",
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "assets/icons/cross_platform_2.png",
                            height: 30,
                            width: 30,
                          ),
                          const Text(
                            "Flutter.",
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/icons/cyber-attack.png',
                            width: 34,
                            height: 34,
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
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Image.asset(
                          'assets/images/hacking.jpeg',
                          height: 300,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: const Text(
                          "Basically I was solving Hack the Box problems and also I've started a handshake (.cap) file decryption using crunch and aircrack-ng. The main thing I used to learn ethical hacking is :",
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/hacking_1.png",
                            height: 30,
                            width: 30,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "Hack The Box ",
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                const SizedBox(height: 40),// Web Development Project
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blueGrey[900],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/icons/server.png',
                            width: 34,
                            height: 34,
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
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Image.asset(
                          'assets/images/deployment.jpeg',
                          height: 300,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: const Text(
                          "This is basically a self-hosted linux based server running a custom OS named Athena. Here I was trying to self-deploy one of my webapp using latest technologies for smooth and scalable deployment . This project is based on:",
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/deployment_3.png",
                            height: 30,
                            width: 30,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "Docker and ",
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "assets/icons/deployment_4.png",
                            height: 30,
                            width: 30,
                          ),
                          const Text(
                            "Kubernetes.",
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),

                const SizedBox(height: 120),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
