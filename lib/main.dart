
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(title: 'My First Assignment'),
   );
  }

  }
class _MyHomePageState extends State<HomeScreen> {
  int _count = 0;

     void _incrementCounter() {
       setState(() {
         _count++;
       });
     }
  void _decrementCounter() {
    setState(() {
      if(_count==0){
        return;
      }//if
      _count--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: Text('My Counter App'),
          backgroundColor: Colors.deepPurple),
      body: Center(
        child: Text('$_count',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      // Added row with 2 buttons
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 35,bottom: 15),
            child: FloatingActionButton(
              backgroundColor: Colors.deepPurple,
              child: Icon(
                Icons.remove,
              ),
              onPressed: _decrementCounter ,
              tooltip: 'Decrement',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 17),
            child: FloatingActionButton(
              backgroundColor: Colors.deepPurple,
              child: Icon(
                Icons.add,
              ),
              onPressed: _incrementCounter,
              tooltip: 'Increment',
            ),
          ),
        ],
      ),

    );
  }
}

class HomeScreen  extends StatefulWidget{
  HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;
     @override
     _MyHomePageState createState() => _MyHomePageState();
}