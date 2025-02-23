import 'package:flutter/material.dart';
import 'package:tween_animation_builder/second_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween Animation Builder'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondView()),
            );
          },
          child: const Text('Click'),
        ),
      ),
    );
  }
}
