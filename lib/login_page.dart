import 'package:flutter/material.dart';
import 'package:nagad_ui_design/homepage.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(15, 15),
                          bottomLeft: Radius.elliptical(15, 15),
                        ),
                        border: Border.all(color: Colors.red, width: 1.5)),
                    child: Text(
                      'Ban',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.elliptical(15, 15),
                          bottomRight: Radius.elliptical(15, 15),
                        ),
                        border: Border.all(color: Colors.red, width: 1.5)),
                    child: Text(
                      'Eng',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              Image(
                image: AssetImage('images/nagad_logo.png'),
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Text(
                'Mobile Number',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12,
                ),
              ),
              Text(
                '01941-129628',
                style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Icon(Icons.lock_outline),
                  ),
                  //prefixIcon: Icon(Icons.people),
                  labelText: "PIN",
                  //suffixIcon: Icon(Icons.remove_red_eye)
                ),
                cursorHeight: 27,
                cursorWidth: 2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(280, 40),
                    primary: Colors.white,
                    side: BorderSide(
                      color: Colors.deepOrange,
                      width: 1.5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
                    /*Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                      (Route<dynamic> route) => false,
                    );*/
                  }),
              SizedBox(
                height: MediaQuery.of(context).size.height * .025,
              ),
              Text(
                'Forgot PIN?',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 35,
                        color: Colors.deepOrange,
                      ),
                      Text(
                        'Store Locator',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.brightness_7,
                        size: 35,
                        color: Colors.deepOrange,
                      ),
                      Text(
                        'Offers',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.contact_support,
                        size: 35,
                        color: Colors.deepOrange,
                      ),
                      Text(
                        'Help',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
