import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'neurorevive_home.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final user = FirebaseAuth.instance.currentUser;

  signout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F4C5C),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo
          Center(
            child: Image.network(
              'https://www.bing.com/th?id=OIP.nENQFcaqbYneoL_BI4wRiwHaGL&w=150&h=125&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2',
              height: 120,
            ),
          ),

          const SizedBox(height: 30),

          // Text
          const Text(
            "We're scientists and designers on a mission",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "to advance the understanding of human cognition.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 60),

          // Next Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF3704D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: const Size(double.infinity, 60),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NeuroReviveHome()),
                );
              },
              child: const Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Logout button
          FloatingActionButton(
            onPressed: signout,
            backgroundColor: Colors.blueGrey[600],
            child: const Icon(Icons.logout, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
