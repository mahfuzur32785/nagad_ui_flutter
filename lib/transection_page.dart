import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nagad_ui_design/homepage.dart';
import 'package:nagad_ui_design/login_page.dart';
import 'package:nagad_ui_design/my_nagad_page.dart';
import 'package:nagad_ui_design/people_page.dart';
import 'package:nagad_ui_design/transection_page.dart';

class TransectionPage extends StatefulWidget {
  const TransectionPage({Key? key}) : super(key: key);

  @override
  State<TransectionPage> createState() => _TransectionPage();
}

class _TransectionPage extends State<TransectionPage> {
  int _selectedIndex = 1;

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
        /*Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => TransectionPage()),
              (Route<dynamic> route) => false,
        );*/
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
        title: Text('Transactions'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                      ),
                      Text('June 2022'),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
              DefaultTabController(
                length: 3, // length// of tabs
                initialIndex: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: TabBar(
                        labelColor: Colors.deepOrange,
                        unselectedLabelColor: Colors.grey,
                        //overlayColor: MaterialStateProperty.all(Colors.green),
                        tabs: [
                          Tab(text: 'All'),
                          Tab(text: 'IN'),
                          Tab(text: 'OUT'),
                        ],
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          ),
                        ],
                        color: Colors.white,
                      ),
                    ),
                    SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .66,
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                          ),
                          //color: Colors.blue
                        ),
                        child: TabBarView(
                          //dragStartBehavior: DragStartBehavior.down,
                          children: [
                            ListView(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              children: [
                                ListTile(
                                  leading: Icon(Icons.arrow_forward,color: Colors.pink,),
                                  title: Text("Cash IN"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_forward,color: Colors.pink,),
                                  title: Text("Cash IN"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_back,color: Colors.green,),
                                  title: Text("Cash Out"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_back,color: Colors.green,),
                                  title: Text("Cash Out"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_forward,color: Colors.pink,),
                                  title: Text("Cash IN"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_back,color: Colors.green,),
                                  title: Text("Cash Out"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_back,color: Colors.green,),
                                  title: Text("Cash Out"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_forward,color: Colors.pink,),
                                  title: Text("Cash IN"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_back,color: Colors.green,),
                                  title: Text("Cash Out"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_forward,color: Colors.pink,),
                                  title: Text("Cash IN"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                              ],
                            ),
                            ListView(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              children: [
                                ListTile(
                                  leading: Icon(Icons.arrow_forward,color: Colors.pink,),
                                  title: Text("Cash IN"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_forward,color: Colors.pink,),
                                  title: Text("Cash IN"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_forward,color: Colors.pink,),
                                  title: Text("Cash IN"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_forward,color: Colors.pink,),
                                  title: Text("Cash IN"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                              ],
                            ),
                            ListView(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              children: [
                                ListTile(
                                  leading: Icon(Icons.arrow_back,color: Colors.green,),
                                  title: Text("Cash Out"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_back,color: Colors.green,),
                                  title: Text("Cash Out"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_back,color: Colors.green,),
                                  title: Text("Cash Out"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_back,color: Colors.green,),
                                  title: Text("Cash Out"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                                ListTile(
                                  leading: Icon(Icons.arrow_back,color: Colors.green,),
                                  title: Text("Cash Out"),
                                  subtitle: Text("01941-129628"),
                                  trailing: Wrap(
                                    spacing: 12, // space between two icons
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text("3180",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 16),), // icon-1
                                          Text("June 25, 04:11 PM"), // icon-2
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(height: 2,thickness: 1.5,indent: 70,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
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
