import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Hola Mundo1111'),
            const Text('Hola Mundo'),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hola Mundo222'),
                Text('Hola Mundo'),
              ],
            ),
            Container(
              width: 200,
              height: 100,
              decoration: const BoxDecoration(color: Colors.amber),
            )
          ],
        ),

      ),
    );
  }
}