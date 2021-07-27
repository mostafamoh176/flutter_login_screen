import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class counterScreen extends StatefulWidget {
  @override
  _counterScreenState createState() => _counterScreenState();
}

class _counterScreenState extends State<counterScreen> {
int counter=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      title: Text(
        'counter',
      ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
          TextButton(onPressed: (){
                setState(() {
                  counter--;
                  print(counter);
                });
                }
          , child: Text('minus')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('${counter}',
                style: TextStyle(
                fontSize: 80.0,fontWeight: FontWeight.w900,
              ),),
            ),
            TextButton(onPressed: (){
              setState(() {
                counter++; print(counter);
              });
              ;}, child: Text('plus'))
        ],),
      ),
    );
  }
}
