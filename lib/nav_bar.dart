import 'package:flutter/material.dart';
import 'package:flutter_pageview_playstore/company_profile.dart';
import 'package:flutter_pageview_playstore/my_profile.dart';
import 'package:flutter_pageview_playstore/pageview_screen.dart';
import 'package:flutter_pageview_playstore/pageview_text_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Sundhar Pichai Thoughts',
              style: TextStyle(
                fontSize: 18.0,

                fontWeight: FontWeight.bold,
                color: Colors.tealAccent.shade400,
              ),
            ),
            accountEmail: Text(
              'CEO of Google',
              style: TextStyle(fontSize: 18,
              color: Colors.white,

                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'images/Sundar_pichai.jpeg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'images/img_3.png',
              ),
              fit: BoxFit.cover,
            )),
          ),
          ListTile(
            title: Text(
              'Quotes Text',
              style: TextStyle(
                color: Colors.tealAccent.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => PageviewTextscreen())),
          ),
          ListTile(
            title: Text(
              'Quotes Images',
              style: TextStyle(
                color: Colors.tealAccent.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => PageviewImageScreen())),
          ),
          ListTile(
            title: Text(
              'Personal Profile',
              style: TextStyle(
                color: Colors.tealAccent.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => MyProfile())),
          ),
          ListTile(
            title: Text(
              'Company Profile',
              style: TextStyle(
                color: Colors.tealAccent.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => CompanyProfile())),
          )
        ],
      ),
    );
  }
}
