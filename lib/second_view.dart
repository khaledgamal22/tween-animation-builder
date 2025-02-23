import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second View'),
      ),
      body: Center(
          child: TweenAnimationBuilder(
              tween: IntTween(begin: 0, end: 100),
              duration: const Duration(seconds: 1),
              builder: (context, value, child) {
                return Text(
                  '$value',
                  style: TextStyle(fontSize: 50, color: Colors.red),
                );
              })),
    );
  }
}

// class MyTween<T>{
//   T begin;
//   T end;
//   MyTween({required this.begin, required this.end});
// }
