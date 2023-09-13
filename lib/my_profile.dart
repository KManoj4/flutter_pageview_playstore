import 'package:flutter/material.dart';
import 'nav_bar.dart';


class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text(
          'Personal Profile',
          style: TextStyle(
            color: Colors.tealAccent.shade700,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/manoj_profile.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                  'Manoj Kamaraj',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.tealAccent.shade700,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tangerine',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.tealAccent.shade700,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tangerine',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                width: 250,
                child: Divider(
                  color: Colors.tealAccent,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.tealAccent,
                  ),
                  title: Text(
                    '+91-9360303057',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.tealAccent.shade700,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tangerine',
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.tealAccent,
                  ),
                  title: Text(
                    'Manojkrish1914@gmail.com',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.tealAccent.shade700,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tangerine',
                    ),
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
