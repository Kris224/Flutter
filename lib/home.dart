import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:workshop_nss/bmi.dart';
import 'package:workshop_nss/inc.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Container(
       width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Workshop',style: TextStyle(fontSize: 35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(''),
                MaterialButton(
                    onPressed: (){
                      print('Button Pressed');
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BMI()));
                    },
                  child: Text('Convert'),
                  color: Colors.amber,
                ),
              ],
            ),
            MaterialButton(
              onPressed: (){
                print('Button Pressed');
                Navigator.push(context, MaterialPageRoute(builder: (context) => Increment()));
              },
              child: Text('Increment'),
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
