import 'package:flutter/material.dart';
import 'package:flutter/material.dart%20';
import 'dart:math';
void main()
{
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int s1=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Ask Me Anything',
            ),
          ),
          backgroundColor: Colors.blue[700],
        ),
        body: Expanded(
          child:Center(
            child:TextButton(
              onPressed: (){
                setState(() {
                  s1 = Random().nextInt(5) + 1;
                });
              },
            child: Image.asset('images/ball$s1.png'),
            ),
          )
        ),
      ),
    );
  }
}
