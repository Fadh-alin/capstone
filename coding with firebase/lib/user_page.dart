import 'package:flutter/material.dart';
import 'package:myapp/user_home.dart';
import 'package:myapp/user_new_report_azizi.dart';
import 'package:myapp/user_notification_faiq.dart';
import 'package:myapp/user_profile.dart';
import 'package:myapp/user_report_history_faiq.dart';


class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  int currentIndex = 0;
  final screens = [
    UserPageHome(),
    ReportHistory(),
    UserNewReport(),
    UserNotifications(),
    UserProfile()
  ];

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.black12,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.build),
              label: 'My Report',
              backgroundColor: Colors.black12,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle, size: 40, color: Colors.cyanAccent,),
              label: 'NEW',
              backgroundColor: Colors.black12,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
              backgroundColor: Colors.black12,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.black12,
            ),
          ],
        ),
      );
}
