import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Container',
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
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.pink], 
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15), 
            ),
            child: Center(
              child: Text(
                'Hello, World!',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 18, 
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}