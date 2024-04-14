import 'package:flutter/material.dart';

import 'homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomAppBar(
        color: const Color(0xFF161332),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen(context: context)));
              },
              icon: const Icon(Icons.home),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              icon: const Icon(Icons.person),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
