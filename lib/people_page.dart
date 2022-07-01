import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nagad_ui_design/homepage.dart';
import 'package:nagad_ui_design/login_page.dart';
import 'package:nagad_ui_design/my_nagad_page.dart';
import 'package:nagad_ui_design/transection_page.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  State<PeoplePage> createState() => _PeoplePage();
}

class _PeoplePage extends State<PeoplePage> {
  int _selectedIndex = 2;

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
        /*Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => TransectionPage()),
              (Route<dynamic> route) => false,
        );*/
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          title: Text('People'),
          bottom: TabBar(
            unselectedLabelColor: Colors.white54,
            indicatorWeight: 1.5,
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: EdgeInsets.only(bottom: 20),
            tabs: [
              Text(
                "CONTACTS",
                style: TextStyle(
                  fontSize: 13,
                  wordSpacing: 2,
                ),
              ),
              Text(
                "SAVED UDDOKTA",
                style: TextStyle(
                  fontSize: 13,
                  wordSpacing: 0,
                ),
              ),
              Text(
                "SAVED MARCHANT",
                style: TextStyle(
                  fontSize: 13,
                  wordSpacing: 0,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          //color: Colors.blue,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      
                    ),
                    //suffixIcon: Icon(Icons.remove_red_eye)
                  ),
                  cursorHeight: 24,
                  cursorWidth: 2,
                ),
                SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Container(
                    padding: EdgeInsets.only(top: 15),
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
                              leading: Icon(Icons.account_circle_rounded,size: 60,),
                              title: Text("Ali Ajom"),
                              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                            ),
                            Divider(height: 30,thickness: 1.5,indent: 70,),
                            ListTile(
                              leading: Icon(Icons.account_circle_rounded,size: 60,),
                              title: Text("Ali Ajom"),
                              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                            ),
                            Divider(height: 30,thickness: 1.5,indent: 70,),ListTile(
                              leading: Icon(Icons.account_circle_rounded,size: 60,),
                              title: Text("Ali Ajom"),
                              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                            ),
                            Divider(height: 30,thickness: 1.5,indent: 70,),ListTile(
                              leading: Icon(Icons.account_circle_rounded,size: 60,),
                              title: Text("Ali Ajom"),
                              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                            ),
                            Divider(height: 30,thickness: 1.5,indent: 70,),ListTile(
                              leading: Icon(Icons.account_circle_rounded,size: 60,),
                              title: Text("Ali Ajom"),
                              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                            ),
                            Divider(height: 30,thickness: 1.5,indent: 70,),ListTile(
                              leading: Icon(Icons.account_circle_rounded,size: 60,),
                              title: Text("Ali Ajom"),
                              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                            ),
                            Divider(height: 30,thickness: 1.5,indent: 70,),ListTile(
                              leading: Icon(Icons.account_circle_rounded,size: 60,),
                              title: Text("Ali Ajom"),
                              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                            ),
                            Divider(height: 30,thickness: 1.5,indent: 70,),ListTile(
                              leading: Icon(Icons.account_circle_rounded,size: 60,),
                              title: Text("Ali Ajom"),
                              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                            ),
                            Divider(height: 30,thickness: 1.5,indent: 70,),ListTile(
                              leading: Icon(Icons.account_circle_rounded,size: 60,),
                              title: Text("Ali Ajom"),
                              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                            ),
                            Divider(height: 30,thickness: 1.5,indent: 70,),ListTile(
                              leading: Icon(Icons.account_circle_rounded,size: 60,),
                              title: Text("Ali Ajom"),
                              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                            ),
                            Divider(height: 30,thickness: 1.5,indent: 70,),ListTile(
                              leading: Icon(Icons.account_circle_rounded,size: 60,),
                              title: Text("Ali Ajom"),
                              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                            ),
                            Divider(height: 30,thickness: 1.5,indent: 70,),ListTile(
                              leading: Icon(Icons.account_circle_rounded,size: 60,),
                              title: Text("Ali Ajom"),
                              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                            ),
                          ],
                        ),
                        ListView(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: [
                                Icon(Icons.people_alt_outlined,color:Colors.grey,size: 80,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0,bottom: 5),
                                  child: Text("No Uddokta Available",style: TextStyle(color: Colors.grey.shade600),),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.refresh,color: Colors.grey.shade600,),
                                    Text('Tap to Refresh',style: TextStyle(color: Colors.grey.shade600),)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        ListView(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: [
                                Icon(Icons.people_alt_outlined,color:Colors.grey,size: 80,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0,bottom: 5),
                                  child: Text("No Marchant Available",style: TextStyle(color: Colors.grey.shade600),),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.refresh,color: Colors.grey.shade600,),
                                    Text('Tap to Refresh',style: TextStyle(color: Colors.grey.shade600),)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
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
      ),
    );
  }
}
