import 'package:flutter/material.dart';

class AlignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Align',
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
          child: Align(
            alignment: Alignment.topRight,
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
            ),
          ),
        ),
      ),
    );
  }
}