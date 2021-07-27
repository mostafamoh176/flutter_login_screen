import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class model{
  final String name;
  final int number;
  final String email;
  model({
    required this.name,
    required this.number,
    required this.email,
  }
      );}

class  UserScreen extends StatelessWidget {
  List<model> models=[
    model(
        name: 'mostafa mohamed',
        number: 0101111533207,
        email: 'mostafamoh176@gmail.com'),
    model(
        name: 'mahmoud',
        number: 01022352658,
        email: 'momo@gmail.com'),
    model(
        name: 'abdo',
        number: 0111135895,
        email: 'abdomohamed@gmail.com'),
    model(
        name: 'mostafa mohamed',
        number: 0101111533207,
        email: 'mostafamoh176@gmail.com'),
    model(
        name: 'mahmoud',
        number: 01022352658,
        email: 'momo@gmail.com'),
    model(
        name: 'abdo',
        number: 0111135895,
        email: 'abdomohamed@gmail.com'),
    model(
        name: 'mostafa mohamed',
        number: 0101111533207,
        email: 'mostafamoh176@gmail.com'),
    model(
        name: 'mahmoud',
        number: 01022352658,
        email: 'momo@gmail.com'),
    model(
        name: 'abdo',
        number: 0111135895,
        email: 'abdomohamed@gmail.com'),
    model(
        name: 'mostafa mohamed',
        number: 0101111533207,
        email: 'mostafamoh176@gmail.com'),
    model(
        name: 'mahmoud',
        number: 01022352658,
        email: 'momo@gmail.com'),
    model(
        name: 'abdo',
        number: 0111135895,
        email: 'abdomohamed@gmail.com'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),

      body:
      ListView.separated(
          itemBuilder: (context,index)=>
            userWidget(models[index])
          ,
          separatorBuilder: (context,index)=>Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
          itemCount: models.length)
    );
  }
  Widget userWidget(model moodel)=>
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              child: Text(
                '1',style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 ' ${moodel.name}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('${moodel.number}'),
                Text('${moodel.email}')
              ],
            ),
          ],
        ),
      );
}
