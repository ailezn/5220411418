import 'package:flutter/material.dart';

class IconScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Icon',
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold, 
          ),
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white, 
          ),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
      ),
      body: Container(
        color: Colors.black, 
        child: Center(
          child: Icon(
            Icons.favorite,
            color: Colors.pink, 
            size: 100, 
          ),
        ),
      ),
    );
  }
}