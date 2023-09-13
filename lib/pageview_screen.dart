import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pageview_playstore/app_data.dart';
import 'package:flutter_pageview_playstore/display_image.dart';
import 'indicator.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:io';
import 'nav_bar.dart';

class PageviewImageScreen extends StatefulWidget {
  const PageviewImageScreen({super.key});

  @override
  State<PageviewImageScreen> createState() => _PageviewImageScreenState();
}

class _PageviewImageScreenState extends State<PageviewImageScreen> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text(
          'Sundar Pichai Images ',
          style: TextStyle(
            color: Colors.tealAccent.shade700,
            fontWeight: FontWeight.bold,
            fontSize: 20,

          ),
        ),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(value: 1, child: Text("Share")),
            ],
            elevation: 2,
            onSelected: (value) {
              if (value == 1) {
                print('---------> Share option clicked');
                _shareInfo();
              }
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 410,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    print('-----------> on page changed');
                    print(index);
                    _selectedIndex = index;
                  });
                },
                itemCount: appDataList.length,
                itemBuilder: (context, index) {
                  return DisplayImage(
                    appData: appDataList[index],
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    appDataList.length,
                    (index) => Indicator(
                        isActive: _selectedIndex == index ? true : false))
              ],
            ),
          )
        ],
      ),
    );
  }
}

void _shareInfo() async {
  print('------------> Share Info - Image');
  var _selectedIndex;
  print(appDataList[_selectedIndex].imagePath);

  ByteData imagebyte =
      await rootBundle.load(appDataList[_selectedIndex].imagePath);
  final temp = await getTemporaryDirectory();
  final path = '${temp.path}/img_1.png';
  File(path).writeAsBytesSync(imagebyte.buffer.asUint8List());
  await Share.shareFiles([path], text: '');
}
