import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'appdata_text.dart';
import 'display_text.dart';
import 'nav_bar.dart';

class PageviewTextscreen extends StatefulWidget {
  const PageviewTextscreen({super.key});

  @override
  State<PageviewTextscreen> createState() => _PageviewTextscreenState();
}

class _PageviewTextscreenState extends State<PageviewTextscreen> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text(
          'Sundar Pichai Quotes',
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
                print('----------> share option clicked');
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
            height: 240,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    print('--------> on page changed');
                    print(index);
                    _selectedIndex = index;
                  });
                },
                controller: PageController(viewportFraction: 0.7),
                itemCount: appDataTextList.length,
                itemBuilder: (Center, index) {
                  var quotes = appDataTextList[index];
                  var scale = _selectedIndex == index ? 1.0 : 0.8;

                  return TweenAnimationBuilder(
                      tween: Tween(begin: scale, end: scale),
                      duration: Duration(microseconds: 350),
                      child: DisplayText(
                        appDataText: quotes,
                      ),
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: value,
                          child: child,
                        );
                      });
                  return DisplayText(
                    appDataText: appDataTextList[index],
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: new Text(
                  (_selectedIndex + 1).toString() +
                      '/' +
                      appDataTextList.length.toString(),
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.tealAccent.shade700,
                    fontFamily: 'Tangerine',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void _shareInfo() {
    print('-------------------> Share Info - Text');
    print(appDataTextList[_selectedIndex].Text);
    Share.share(appDataTextList[_selectedIndex].Text);
  }
}
