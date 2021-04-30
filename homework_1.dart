import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Practice1 extends StatefulWidget {
  @override
  _Practice1State createState() => _Practice1State();
}

class _Practice1State extends State<Practice1> {
  bool _evenOrOdd = true;
  int _number = 0;
  AppBar _appBar() {
    return AppBar(title: Text("Example 1", style: TextStyle(color: Colors.black)));

  }

  Widget _body() {
    return Container(child: Text("Number: $_number", style: _evenOrOdd ?TextStyle(fontSize: 30, color: Colors.purple) : TextStyle(fontSize: 30, color: Colors.greenAccent[400])));

  }
  Widget _fabIncrement() {
    return FloatingActionButton.extended(onPressed: _incrementNumber, label: Text("Increment"), icon: Icon(Icons.exposure_plus_1));

  }
  Widget _fabDecrement() {
    return FloatingActionButton.extended(onPressed: _decrementNumber, label: Text("Increment"), icon: Icon(Icons.exposure_minus_1));

  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: _body(),
      floatingActionButton: Column(mainAxisSize: MainAxisSize.min  ,children: [ _fabIncrement(), SizedBox(height: 15), _fabDecrement()],),);
  }

  void _incrementNumber(){
    _number ++;
    if(_number % 2 == 0){
         _evenOrOdd = true;
    }else { _evenOrOdd = false; }
    setState(() {});
  }

  void _decrementNumber(){
    _number--;
    if(_number % 2 == 0){
      _evenOrOdd = true;
    }else { _evenOrOdd = false; }
    setState(() {});

  }
}
