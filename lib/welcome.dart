import 'package:flutter/material.dart';
import 'constant/route.dart';
import 'home.dart';
import 'router.dart';
class Welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child:
        Center(
          child:
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Welcome Page', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,

              ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              }, child:
              Text('go home')),
            ],
          ),
        )


        ),
      ),
    );
  }



}