import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack Flutter'),
      centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: Colors.pink,
          child: Stack(
            //clipBehavior: Clip.hardEdge,
            alignment: Alignment.centerLeft,
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.blue,
              ),
              Align(
                // alignment: Alignment.bottomRight
                alignment: Alignment(1,1),
                child: Container(
                  width: 180,
                  height: 180,
                  color: Colors.amberAccent,
                ),

              ),
              Positioned(

                // left: -10,
                // top: -200,
                // height: 300,
                left: 1,
                top: 1,
                //height: 300,

                child: Container(
                  width: 180,
                  height: 180,
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
