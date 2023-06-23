// import 'dart:ffi';
// import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      // home: Text("hello world"),
      home: Test(),
    ));

class DanielK extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      appBar: AppBar(
        title: Text(
          'Welcome Daniel',
          style: TextStyle(color: Colors.grey[100]),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[200],
        elevation: 0,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  // backgroundColor: Colors.cyan,
                  backgroundImage: AssetImage('assets/pikaimage1.jpeg'),
                  radius: 25,
                ),
              ),
              Divider(
                height: 90.0,
                color: Colors.black,
              ),
              SizedBox(height: 20),
              Text('NAME',
                  style: TextStyle(
                    color: Colors.black,
                    // letterSpacing: 2.0,
                  )),
              SizedBox(height: 10),
              Text('Kyeyune Daniel',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text('CURRENT NINJA LEVEL',
                  style: TextStyle(
                    color: Colors.black,
                    // letterSpacing: 2.0,
                  )),
              SizedBox(height: 10),
              Text('9',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10),
                  Text('Kyeyunedaniel0@gmail.com',
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 1.5,
                      )),
                ],
              )
            ],
          )),
    );
  }
}

//lets try stateless widgets
class Test extends StatefulWidget {
  // const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      appBar: AppBar(
        title: Text(
          'Welcome Daniel',
          style: TextStyle(color: Colors.grey[100]),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[200],
        elevation: 0,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  // backgroundColor: Colors.cyan,
                  backgroundImage: AssetImage('assets/pikaimage1.jpeg'),
                  radius: 25,
                ),
              ),
              Divider(
                height: 90.0,
                color: Colors.black,
              ),
              SizedBox(height: 20),
              Text('NAME',
                  style: TextStyle(
                    color: Colors.black,
                    // letterSpacing: 2.0,
                  )),
              SizedBox(height: 10),
              Text('Kyeyune Daniel',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text('CURRENT NINJA LEVEL',
                  style: TextStyle(
                    color: Colors.black,
                    // letterSpacing: 2.0,
                  )),
              SizedBox(height: 10),
              Text('9',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10),
                  Text('Kyeyunedaniel0@gmail.com',
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 1.5,
                      )),
                ],
              )
            ],
          )),
    );
  }
}
