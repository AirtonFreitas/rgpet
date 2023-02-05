import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 8), () {
      Navigator.popAndPushNamed(context, 'login');
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animations/animals_paper.json',
              width: MediaQuery.of(context).size.width * 0.7,
            ),
            Lottie.asset(
              'assets/animations/loading.json',
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
