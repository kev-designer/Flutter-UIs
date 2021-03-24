import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage("assets/profile.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Alex",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 24),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            "alex@gmail.com",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 150,
              ),
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.home,
                      size: 34,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  iconName("Home"),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.settings,
                      size: 34,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  iconName("Settings"),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.help,
                      size: 34,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  iconName("Help"),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.call,
                      size: 34,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  iconName("Contact Us"),
                ],
              ),
              SizedBox(
                height: 180,
              ),
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.logout,
                      size: 34,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  iconName("Log Out"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container iconName(String iconName) {
    return Container(
      child: Text(
        iconName,
        style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),
      ),
    );
  }
}
