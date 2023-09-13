import 'package:flutter/material.dart';
import 'app_data.dart';


class DisplayImage extends StatelessWidget {
  final AppData appData;
  const DisplayImage({super.key , required this.appData});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(appData.imagePath),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}
