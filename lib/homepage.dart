import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nagad_ui_design/login_page.dart';
import 'package:nagad_ui_design/my_nagad_page.dart';
import 'package:nagad_ui_design/people_page.dart';
import 'package:nagad_ui_design/transection_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        /*Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
              (Route<dynamic> route) => false,
        );*/
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
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MyNagadPage()),
              (Route<dynamic> route) => false,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //title: Text('tex'),
        toolbarHeight: 165,
        flexibleSpace: Container(
          padding: EdgeInsets.only(top: 30),
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              Image(
                image: AssetImage('images/nagad_logo2.png'),
                color: Colors.white,
                width: 170,
                height: 70,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
                child: Text(
                  'Mahfuzur Rahman Faruk',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/nagad_balance.png'),
                      //radius: 50,
                    ),
                    /*Image(
                      image: AssetImage('images/nagad_balance.png'),
                    ),*/
                    Text(
                      'Tab for Balance',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 100.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none_outlined),
              iconSize: 28,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Services',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepOrange,
                              Colors.red.shade800,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Icon(
                          Icons.ios_share,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Add Money',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepOrange,
                              Colors.red.shade800,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Icon(
                          Icons.swipe,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Cash Out',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepOrange,
                              Colors.red.shade800,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Icon(
                          Icons.send_to_mobile,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Mobile Recharge',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepOrange,
                              Colors.red.shade800,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Icon(
                          Icons.transform,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Add Money',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepOrange,
                              Colors.red.shade800,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Icon(
                          Icons.transit_enterexit,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Transfer Money',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepOrange,
                              Colors.red.shade800,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Icon(
                          Icons.transit_enterexit,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Transfer Money',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepOrange,
                              Colors.red.shade800,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Icon(
                          Icons.museum,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Insurance',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepOrange,
                              Colors.red.shade800,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Icon(
                          Icons.format_shapes,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Nagad Mela',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
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
