import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nagad_ui_design/homepage.dart';
import 'package:nagad_ui_design/login_page.dart';
import 'package:nagad_ui_design/people_page.dart';
import 'package:nagad_ui_design/transection_page.dart';

class MyNagadPage extends StatefulWidget {
  const MyNagadPage({Key? key}) : super(key: key);

  @override
  State<MyNagadPage> createState() => _MyNagadPage();
}

class _MyNagadPage extends State<MyNagadPage> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
              (Route<dynamic> route) => false,
        );
      }
      if (index == 1) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => TransectionPage()),
              (Route<dynamic> route) => false,
        );
      }
      if (index == 2) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => PeoplePage()),
              (Route<dynamic> route) => false,
        );
      }
      if (index == 3) {
        /*Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyNagadPage()),
              (Route<dynamic> route) => false,
        );*/
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Nagad'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LogInPage()),);
          },
          child: Text("Log Out"),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54,
                blurRadius: 5,
                offset: Offset(0.0, 0.75)
            )
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 35,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(
            color: Colors.red,
          ),
          unselectedLabelStyle: TextStyle(
            color: Colors.grey,
          ),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.library_books,
              ),
              label: 'Transaction',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
              ),
              label: "People",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: "My Nagad",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          //elevation: 12,
        ),
      ),
    );
  }
}
