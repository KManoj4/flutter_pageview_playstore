import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_pageview_playstore/pageview_text_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => PageviewTextscreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(70),
                  child: Image.asset('images/img_1.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'I love technology while growing up.',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tangerine',
                    color: Colors.tealAccent.shade400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
