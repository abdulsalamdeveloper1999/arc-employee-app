import 'package:flutter/material.dart';

class exp extends StatefulWidget {
  const exp({ Key? key }) : super(key: key);

  @override
  State<exp> createState() => _expState();
}

class _expState extends State<exp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
width: double.infinity,
        child: Column(
children: [
  Container(
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(20)),
    
    child: Text("ali hbjhkjhkhkhk"),)
],
        ),
      )
    );
  }
}