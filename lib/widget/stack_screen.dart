import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stack',
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
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: const Color.fromARGB(255, 239, 160, 222),
              ),
              Container(
                width: 150,
                height: 150,
                color: const Color.fromARGB(255, 127, 186, 235),
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 194, 114, 225),
              ),
            ],
          ),
        ),
      ),
    );
  }
}