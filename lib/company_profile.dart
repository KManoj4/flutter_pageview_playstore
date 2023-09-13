import 'package:flutter/material.dart';
import 'nav_bar.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text(
          'Company Profile',
          style: TextStyle(
            color: Colors.tealAccent.shade700,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(40),
                      child: Image.asset('images/company_logo.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Tidy Life India Pvt Ltd',
                      style: TextStyle(
                        color: Colors.tealAccent.shade700,
                        fontSize: 30,
                        fontFamily: 'Tangerine',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 20,
                  width: 250,
                  child: Divider(
                    color: Colors.tealAccent,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.tealAccent,
                  ),
                  title: Text(
                    '+91 8610338291',
                    style: TextStyle(
                      color: Colors.tealAccent.shade700,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tangerine',
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.tealAccent,
                  ),
                  title: Text(
                    'tidylifeindia@gmail.com',
                    style: TextStyle(
                      color: Colors.tealAccent.shade700,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tangerine',
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.location_city,
                    color: Colors.tealAccent,
                  ),
                  title: Text(
                    'No.A3,Mahalakshmi Flats,\n Sivagami Street,\n New Perugalathur,\n Chennai - 600062.',
                    style: TextStyle(
                      color: Colors.tealAccent.shade700,
                      fontSize: 30,
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
