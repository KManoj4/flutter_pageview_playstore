import 'package:flutter/material.dart';

import 'appdata_text.dart';

import 'package:flutter/cupertino.dart';


class DisplayText extends StatelessWidget {
  final AppDataText appDataText;
  const DisplayText({super.key, required this.appDataText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle(
        style: TextStyle(
          color: Colors.white,
          fontSize: 22.0,
          letterSpacing: 2.5,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  // set text
                  appDataText.Text,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
