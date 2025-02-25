import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double _begin = 100;

  double _end = 200;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tween Animation Builder'),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              buildAnimatedContainer(),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  _begin = _begin == 100 ? 200 : 100;
                  _end = _end == 200 ? 100 : 200;
                  setState(() {});
                },
                child: const Text('Click'),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  TweenAnimationBuilder<double> buildAnimatedContainer() {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: _begin, end: _end),
        duration: const Duration(seconds: 1),
        child: Column(
          children: [
            Spacer(),
            Text(
              'child',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Spacer(),
            Text(
              'child',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Spacer(),
          ],
        ),
        builder: (context, value, child) {
          return Container(
            width: value,
            height: value,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          );
        });
  }
}
